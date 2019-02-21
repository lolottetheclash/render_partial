# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# pb pour duration
10.times do
user = User.create!(first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: Faker::Internet.password, email: Faker::Internet.email, description: Faker::Lorem.paragraph)
end
#faker.random.number(5,10,15,20,25,30,35)
20.times do
event = Event.create!(start_date: Faker::Date.forward(30), duration: rand(1..10)*5, title: Faker::Book.title, description: Faker::Lorem.paragraph_by_chars(60), price: Faker::Number.number(3), location: Faker::Address.city, admin_id: User.all.sample.id)
end

40.times do
attendance = Attendance.create!(stripe_customer_id: Faker::Number.number(2), guest_id: User.all.sample.id, event_id: Event.all.sample.id)
end
