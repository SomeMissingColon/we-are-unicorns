# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = {email:'dummy@fakeemail.com',
         password: '123456'}
user2 = {email: 'realaccount@realemail.com',
         password: '123456'}

project = {name:'free the ducks',
           description:'free em up'}

user1 = User.create(user1)
user2 = User.create(user2)



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

project = Project.new(project)
project.user = user1
project.focus_area = FocusArea.first
project.save!
