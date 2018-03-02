# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Donation.destroy_all
Project.destroy_all
FocusArea.destroy_all
User.destroy_all

puts "creating users"
user1 = {email:'user1@user1.com',
         password: '123456',
         remote_photo_url: 'https://res.cloudinary.com/dwikboy8/image/upload/t_media_lib_thumb/v1519833061/Avatar-1.jpg' }

user2 = {email: 'user2@user2.com',
         password: '123456',
         remote_photo_url: 'https://res.cloudinary.com/dwikboy8/image/upload/t_media_lib_thumb/v1519833061/Avatar-2.jpg' }


user1 = User.create(user1)
user2 = User.create(user2)

puts "creating focus area"
FocusArea.create(name: "Ageing")
FocusArea.create(name: "Agriculture & Food")
FocusArea.create(name: "Animal Health & Rights")
FocusArea.create(name: "Business & Economic Policy")
FocusArea.create(name: "Children & Youth")
FocusArea.create(name: "Communications & Media")
FocusArea.create(name: "Conflict Resolution")
FocusArea.create(name: "Development")
FocusArea.create(name: "Education")
FocusArea.create(name: "Environment")
FocusArea.create(name: "Family")
FocusArea.create(name: "Health & Nutrition")
FocusArea.create(name: "Human Rights")
FocusArea.create(name: "Indigenous People")
FocusArea.create(name: "International Organization")
FocusArea.create(name: "Labor")
FocusArea.create(name: "Law & Legal Affairs")
FocusArea.create(name: "Narcotics, Drugs & Crime")
FocusArea.create(name: "Peace & Security")
FocusArea.create(name: "Population/ Human Settlements")
FocusArea.create(name: "Refugees")
FocusArea.create(name: "Relief Services")
FocusArea.create(name: "Religion, Belief & Ethics")
FocusArea.create(name: "Science & Technology")
FocusArea.create(name: "Social & Cultural Development")
FocusArea.create(name: "Sports & Recreation")
FocusArea.create(name: "Trade & International Finance")
FocusArea.create(name: "Transportation")
FocusArea.create(name: "Women`s Status & Issues")


project1 = { name:'free the ducks',
           description:'free em up',
           user: user1,
           focus_area_id: 1,
           remote_photo_url: 'https://res.cloudinary.com/dwikboy8/image/upload/t_media_lib_thumb/v1519833062/free-stuff.jpg' }
photo_url = "http://res.cloudinary.com/dwikboy8/image/upload/v1520009740/xuav2d8y134tgdc8homv.jpg"
project2 = { name:'free the rocks',
description:'free em up',
user: user1,
focus_area_id: 2,
remote_photo_url: 'http://res.cloudinary.com/dwikboy8/image/upload/v1520009740/xuav2d8y134tgdc8homv.jpg' }

project3 = { name:'free the nips',
description:'free em up',
user: user1,
focus_area_id: 3,
remote_photo_url: 'http://res.cloudinary.com/dwikboy8/image/upload/v1520009740/xuav2d8y134tgdc8homv.jpg' }

project4 = { name:'free the tips',
description:'free em up',
user: user1,
focus_area_id: 4,
remote_photo_url: 'http://res.cloudinary.com/dwikboy8/image/upload/v1520009740/xuav2d8y134tgdc8homv.jpg' }

project5 = { name:'free the creeps',
description:'free em up',
user: user2,
focus_area_id: 5,
remote_photo_url: 'http://res.cloudinary.com/dwikboy8/image/upload/v1520009740/xuav2d8y134tgdc8homv.jpg' }

project6 = { name:'free the flips',
description:'free em up',
user: user2,
focus_area_id: 6,
remote_photo_url: 'http://res.cloudinary.com/dwikboy8/image/upload/v1520009740/xuav2d8y134tgdc8homv.jpg' }

project7 = { name:'free the drips',
description:'free em up',
user: user2,
focus_area_id: 7,
remote_photo_url: 'http://res.cloudinary.com/dwikboy8/image/upload/v1520009740/xuav2d8y134tgdc8homv.jpg' }

puts "creating projects"
project1 = Project.new(project1)
project1.save!
project2 = Project.create(project2)
project3 = Project.create(project3)
project4 = Project.create(project4)
project5 = Project.create(project5)
project6 = Project.create(project6)
project7 = Project.create(project7)

puts "done"
