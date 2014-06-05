class Order < ActiveRecord::Base
  before_validation :generate_uuid!, :on => :create
  belongs_to :user
  belongs_to :payment_option
  scope :completed, -> { where("token != ? OR token != ?", "", nil) }
  self.primary_key = 'uuid'

  # This is where we create our Caller Reference for Amazon Payments, and prefill some other information.
  def self.prefill!(options = {})
    @order                = Order.new
    @order.name           = options[:name]
    @order.user_id        = options[:user_id]
    @order.number         = Order.next_order_number
    @order.shirt_size     = options[:shirt_size] if !options[:shirt_size].nil?
    @order.payment_option = options[:payment_option] if !options[:payment_option].nil?
    @order.shipping       = 10.to_f if options[:international_ship] == 1

    if options[:international_ship] == 1
      @order.price        = options[:price] + 10.to_f
    else
      @order.price        = options[:price]
    end

    @order.save!

    @order
  end

  # After authenticating with Amazon, we get the rest of the details
  def self.postfill!(options = {})
    @order = Order.find_by!(:uuid => options[:callerReference])
    @order.token             = options[:tokenID]
    if @order.token.present?
      @order.address_one     = options[:addressLine1]
      @order.address_two     = options[:addressLine2]
      @order.city            = options[:city]
      @order.state           = options[:state]
      @order.status          = options[:status]
      @order.zip             = options[:zip]
      @order.phone           = options[:phoneNumber]
      @order.country         = options[:country]
      @order.expiration      = Date.parse(options[:expiry])
      @order.save!

      @order
    end
  end

  def self.errors!(caller_reference, pay_errors)
    @order = Order.find_by!(:uuid => caller_reference)

    @order.pay_errors         = pay_errors

    @order.save!

    @order
  end

  def self.next_order_number
    if Order.count > 0
      Order.order("number DESC").limit(1).first.number.to_i + 1
    else
      1
    end
  end

  def generate_uuid!
    begin
      self.uuid = SecureRandom.hex(16)
    end while Order.find_by(:uuid => self.uuid).present?
  end

  # goal is a dollar amount, not a number of backers, because you may be using the multiple payment options component
  # by setting Settings.use_payment_options == true
  def self.goal
    Settings.project_goal
  end

  def self.percent
    #note 5k from idea awards
    (Order.revenue.to_f/ Order.goal.to_f) * 100.to_f
  end

  # See what it looks like when you have some backers! Drop in a number instead of Order.count
  def self.backers
    Order.completed.count
  end

  def self.revenue
    if Settings.use_payment_options
      #note 5k from idea awards
      PaymentOption.joins(:orders).where("token != ? OR token != ?", "", nil).pluck('sum(amount)')[0].to_f + 5000
    else
      Order.completed.sum(:price).to_f
    end 
  end

  validates_presence_of :name, :price, :user_id
end
