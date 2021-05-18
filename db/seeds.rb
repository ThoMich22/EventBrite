# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

t1 = Time.now
t2 = Time.parse("2023-01-01 00:00:00")


5.times do
  user = User.create!(
    email: Faker::Name.first_name+"@yopmail.com", 
    description: Faker::Lorem.sentence, 
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name
    )
end


# 5.times do |x|
#     event = Event.create(
#         start_date: rand(t1..t2),
#         duration: rand(5..100)*5,
#         description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
#         location: Faker::Address.city,
#         price: rand(1..1000),
#         title: Faker::Sports::Football.competition,
#         admin: User.all.sample
#     )
# end

# 20.times do |x|
#     attendance = Attendance.create(
#         user: User.all.sample, 
#         event: Event.all.sample
#     )
    
# end

