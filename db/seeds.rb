# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Color.destroy_all
Occasion.destroy_all
Style.destroy_all
Brand.destroy_all

Item.destroy_all

color_gold = Color.create name: "Gold"
color_silver = Color.create name: "Silver"

occasion_night_out = Occasion.create name: "Night Out"
occasion_work = Occasion.create name: "Work"
occasion_wedding = Occasion.create name: "Wedding"
occasion_anything = Occasion.create name: "Anything"

style_casual = Style.create name: "Casual"
style_fancy = Style.create name: "Fancy"
style_hipster = Style.create name: "Hipster"
style_anything = Style.create name: "Timeless"

brand_kors = Brand.create name: "Michael Kors"
brand_anthro = Brand.create name: "Anthropologie"
brand_asos = Brand.create name: "ASOS"
brand_skye = Brand.create name: "CC SKYE"

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."


Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.WATCH,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."


Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.HANDBAG,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

Item.create name: "Michael Kors Gold Watch",
colors: [color_gold], occasions: [occasion_anything], styles: [style_anything],
brand_id: brand_kors.id, item_type_id: ItemType.BRACELET,
msrp: 200.00, price: 100.00, stock: 10,
img_1: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch.jpg",
img_2: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_2.jpg",
img_3: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_3.jpg",
img_4: "http://static.getgumball.com/prizes/michael_kors_golden_runway_watch_4.jpg",
description: "This is a sample description. It should be pretty long since it is used to describe what an item is about and stuff. It should probably be longer than it is right now, but i descriptiont want to type anymore.",
details: "Details go here. They are things like the material that the item is made out of, caring instructions and other things people might like to know.",
guide: "This is about how to wear the item. Like what what style it goes well with and other things to pair it with. We might ship items with this text in the box."

# ItemType.destroy_all
# item_type_watch = ItemType.create name: "Watch"
# item_type_bracelet = ItemType.create name: "Bracelet"
# item_type_handbag = ItemType.create name: "Handbag"
