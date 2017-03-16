# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

require 'active_record'
Person.destroy_all
Activity.destroy_all
Message.destroy_all
activity_one = Activity.create!( category: "Movies", event_name: "Logan", location: "AMC 24", date: "03/20/2017", blurb: "I really want to see Logan but I don't want to go alone to such an awesome movie!", time: "07:00 PM", price: "$14.00" )
activity_two = Activity.create!( category: "Concerts", event_name: "Nicki Minaj!", location: "Jiffy Lube Live!", date: "05/03/2017", blurb: "Need someone to jam with at the Nicki Minaj concert, where my Black Barbies at!", time: "08:00 PM", price: "$200")
activity_three = Activity.create!( category: "Dinner", event_name: "Fine dining", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_four = Activity.create!( category: "Movies", event_name: "Moonlight", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_five = Activity.create!( category: "Movies", event_name: "La La Land", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_six = Activity.create!( category: "Concerts", event_name: "Taylor Swift", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_seven = Activity.create!( category: "Concerts", event_name: "Lady Gaga", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_eight = Activity.create!( category: "Dinner", event_name: "McDonalds", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_nine = Activity.create!( category: "Dinner", event_name: "Taco Bell", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_ten = Activity.create!( category: "Dinner", event_name: "Wendy's", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_eleven = Activity.create!( category: "Dinner", event_name: "Red Lobster", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_twelve = Activity.create!( category: "Dinner", event_name: "Chicken Out", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")
activity_thirteen = Activity.create!( category: "Dinner", event_name: "FOOOOOOOD", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_four = Activity.create!( category: "Movies", event_name: "Moonlight", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_five = Activity.create!( category: "Movies", event_name: "La La Land", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_six = Activity.create!( category: "Concerts", event_name: "Taylor Swift", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_seven = Activity.create!( category: "Concerts", event_name: "Lady Gaga", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_eight = Activity.create!( category: "Dinner", event_name: "McDonalds", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_nine = Activity.create!( category: "Dinner", event_name: "Taco Bell", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_ten = Activity.create!( category: "Dinner", event_name: "Wendy's", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_eleven = Activity.create!( category: "Dinner", event_name: "Red Lobster", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_twelve = Activity.create!( category: "Dinner", event_name: "Chicken Out", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

activity_thirteen = Activity.create!( category: "Dinner", event_name: "FOOOOOOOD", location: "Chef Geoff", date: "04/07/2017", blurb: "Need someone to join me at his last night in DC!", time: "06:30 PM", price: "$150")

person_one = Person.create!( name: "Peter", activity: activity_one)
person_two = Person.create!( name: "Latoya", activity: activity_two)
person_three = Person.create!( name: "Joshua", activity: activity_three)
message_one = Message.create!( author: "Hannah", content: "OH EM GEE!! COUNT ME IN!", activity: activity_one)
message_two = Message.create!( author: "Karen", content: "I LOVE, LOVE HER, do you want to meet up before the concert starts?", activity: activity_two)
message_three = Message.create!( author: "Will", content: "would love to join in Chef Geoff's last dinner with you guys", activity: activity_three)
activity_one.people.create(name: "Will")
