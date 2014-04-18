# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PaymentOption.create(
    [
        {
            amount: 10.00,
            amount_display: '$10',
            description: 'Advlo Weatherproof Decal Sticker + Big Virtual Thank You Hug <3 !',
            shipping_desc: 'add $5 to ship outside the US',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 20.00,
            amount_display: '$20',
            description: 'Advlo Water Bottle + GoPro Raffle Entry (3 To Raffle)',
            shipping_desc: 'add $5 to ship outside the US',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 35.00,
            amount_display: '$35',
            description: 'Advlo T-Shirt + GoPro Raffle Entry (3 To Raffle)',
            shipping_desc: 'add $5 to ship outside the US',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 50.00,
            amount_display: '$50',
            description: 'Advlo T-Shirt + Decal Sticker + Raffle for an Adventure of your choice',
            shipping_desc: 'add $5 to ship outside the US',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 75.00,
            amount_display: '$75',
            description: 'Advlo Canvas (Photo taken by a local from around the world) + Raffle for an Adventure of your choice',
            shipping_desc: 'add $5 to ship outside the US',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 100.00,
            amount_display: '$100',
            description: 'Advlo Canvas (Photo taken by a local from around the world) + Raffle for an Adventure to the Colorodo Rockies with the Advlo Team',
            shipping_desc: 'add $5 to ship outside the US',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 250.00,
            amount_display: '$250',
            description: 'Advlo T-Shirt + Decal Sticker + Bottle + Canvas + Raffle for an Adventure to the Colorodo Rockies with the Advlo Team',
            shipping_desc: 'add $10 to ship outside the US',
            delivery_desc: '',
            limit: -1
        }
    ])