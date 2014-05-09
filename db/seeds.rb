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
            description: 'VIP Access + Weatherproof Sticker + Big Virtual Thank You Hug',
            shipping_desc: '',
            delivery_desc: '',
            limit: -1,
            icon_1: 'vip.png',
            icon_2: 'sticker.png'
        },
        {
            amount: 20.00,
            amount_display: '$20',
            description: 'VIP Access + Water Bottle + GoPro HERO3 Giveaway Entry',
            shipping_desc: '',
            delivery_desc: '',
            limit: -1,
            icon_1: 'vip.png',
            icon_2: 'sticker.png',
            icon_3: 'water_bottle.png',
            icon_4: 'go_pro.png'
        },
        {
            amount: 35.00,
            amount_display: '$35',
            description: 'VIP Access + T-Shirt + GoPro HERO3 Giveaway Entry',
            shipping_desc: '',
            delivery_desc: '',
            limit: -1,
            icon_1: 'vip.png',
            icon_2: 'sticker.png',
            icon_3: 't_shirt.png',
            icon_4: 'go_pro.png'
        },
        {
            amount: 50.00,
            amount_display: '$50',
            description: 'VIP Access + Weatherproof Sticker + T-Shirt + Regional Adventure of Your Choice Giveaway Entry',
            shipping_desc: '',
            delivery_desc: '',
            limit: -1,
            icon_1: 'vip.png',
            icon_2: 'sticker.png',
            icon_3: 't_shirt.png',
            icon_4: 'r_adventure.png'
        },
        {
            amount: 75.00,
            amount_display: '$75',
            description: 'VIP Access + T-Shirt + Water Bottle + Regional Adventure of Your Choice Giveaway Entry',
            shipping_desc: '',
            delivery_desc: '',
            limit: -1,
            icon_1: 'vip.png',
            icon_2: 'sticker.png',
            icon_3: 't_shirt.png',
            icon_4: 'water_bottle.png',
            icon_5: 'r_adventure.png'
        },
        {
            amount: 100.00,
            amount_display: '$100',
            description: 'VIP Access + T-Shirt + Choice of Photo Canvas + National Adventure of Your Choice Giveaway Entry ',
            shipping_desc: '',
            delivery_desc: '',
            limit: -1,
            icon_1: 'vip.png',
            icon_2: 'sticker.png',
            icon_3: 't_shirt.png',
            icon_4: 'canvas.png',
            icon_5: 'adventure.png',
        },
        {
            amount: 250.00,
            amount_display: '$250',
            description: 'VIP Access + Weatherproof Sticker + Water Bottle + T-Shirt + Choice of Photo Canvas + Entry to Each of the 3 Giveaways',
            shipping_desc: '',
            delivery_desc: '',
            limit: -1,
            icon_1: 'vip.png',
            icon_2: 'sticker.png',
            icon_3: 'water_bottle.png',
            icon_4: 't_shirt.png',
            icon_5: 'canvas.png',
            icon_6: 'go_pro.png',
            icon_7: 'r_adventure.png',
            icon_8: 'adventure.png'
        }
    ])