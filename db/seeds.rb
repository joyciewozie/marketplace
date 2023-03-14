require 'faker'
# require 'pry-byebug'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying all users'
User.destroy_all

user_one = User.create(name: "Luke", password: '123456', email: 'lorem@ipsum.com')
user_two = User.create(name: "Anakin", password: '123456', email: 'dolor@sit.com')


puts 'Destroying all flats'
Flat.destroy_all
flat_one = Flat.create(name: 'Cozy Seafront Studio', location: 'Penang', description: "Our home stay is a studio suite & private  condo near Penang bridge .", price_per_night: '60', owner_id: '1')
flat_two = Flat.create(name: 'Semporna Palm Garden Retreat', location: 'Semporna', description: "Join your beloved ones at this Manggurin House vacation home, reawakening, reconnecting your five senses.", price_per_night: '75', owner_id: '1')

5.times do
    user = User.create(name: Faker::Movies::StarWars.character, password: '123456', email: Faker::Internet.email)
    2.times do
        Flat.create(name: Faker::Address.community, location: Faker::Address.country, description: "Enjoy a stylish experience at this centrally-located place.", price_per_night: Faker::Number.between(from: 50, to: 150), owner_id: user.id)
    end
end

puts 'Destroying all bookings'
Booking.destroy_all
booking_one = Booking.create(start_date: Date.new(2023,5,15), end_date: Date.new(2023,5,20), customer_id: 2, flat_id: 2)
booking_two = Booking.create(accepted: true, start_date: Date.new(2023,6,18), end_date: Date.new(2023,6,23), customer_id: 2, flat_id: 1)
