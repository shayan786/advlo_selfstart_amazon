class CreatePaymentOptions < ActiveRecord::Migration
  def change
    create_table :payment_options do |t|
      t.decimal :amount
      t.string :amount_display
      t.text :description
      t.string :shipping_desc
      t.string :delivery_desc
      t.string :icon_1
      t.string :icon_2
      t.string :icon_3
      t.string :icon_4
      t.string :icon_5
      t.string :icon_6
      t.string :icon_7
      t.string :icon_8
      t.integer :limit

      t.timestamps
    end
  end
end
