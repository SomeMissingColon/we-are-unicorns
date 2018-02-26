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

project = Project.new(project)
project.user = user1
project.save!
