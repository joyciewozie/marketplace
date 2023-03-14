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
# user_three = User.create(name: "Ashoka", password: '123456', email: 'dolor@sit.com')
# user_four = User.create(name: "Cara", password: '123456', email: 'dolor@sit.com')
# user_five = User.create(name: "Koska", password: '123456', email: 'dolor@sit.com')

# 5.times do
#     user = User.create!(name: "Luke", password: '123456', email: 'lorem@ipsum.com')
#     5.times do
#         flat = Flat.create(name: 'KLCC Studio Suites', location: 'Kuala Lumpur', description: "Enjoy a stylish experience at this centrally-located place.", price_per_night: '54', owner_id: user.id)
#     end
# end

Flat.destroy_all
flat_one = Flat.create(name: 'KLCC Studio Suites', location: 'Kuala Lumpur', description: "Enjoy a stylish experience at this centrally-located place.", price_per_night: '54', owner_id: '1')
flat_two = Flat.create(name: 'Semporna Palm Garden Retreat', location: 'Semporna', description: "Join your beloved ones at this Manggurin House vacation home, reawakening, reconnecting your five senses.", price_per_night: '75', owner_id: '1')
# flat_three = Flat.create(name: 'Side Resort Side', location: 'Semporna', description: "Staying here is an unforgettable memory.", price_per_night: '118', owner_id: '1')
# flat_four = Flat.create(name: 'Modern Airy Studio', location: 'Kuala Lumpur', description: "With top end amenities like an infinity pool, ambient business room, and murals, to boost your getaway.", price_per_night: '55', owner_id: '1')
# flat_five = Flat.create(name: 'Kuantan - Wave N\' Sea', location: 'Kuantan', description: "Imperium Residence is a New skyscraper facing the seafront, joint with the Swiss Belhotel Kuantan and their facilities!", price_per_night: '126', owner_id: '1')
# flat_six = Flat.create(name: 'Meridin Medini', location: 'Johor', description: "High floor with nice view, spend quality time and relax with the loved one at this peaceful place to stay.", price_per_night: '23', owner_id: '1')
# flat_seven = Flat.create(name: 'Cozy Seafront Studio', location: 'Penang', description: "Our home stay is a studio suite & private  condo near Penang bridge .", price_per_night: '60', owner_id: '1')
# flat_eight = Flat.create(name: 'Lereve Wonderland', location: 'Kuala Lumpur', description: "100% in real of what you have seen in pictures.", price_per_night: '54', owner_id: '1')
# flat_nine = Flat.create(name: 'Casa Tropika Loft', location: 'Selangor', description: "This stunning duplex house in Cyberjaya is a modern marvel of design and luxury.", price_per_night: '33', owner_id: '1')
# flat_ten = Flat.create(name: 'SkyHome Two Studio', location: 'Penang', description: "There is no master renovation in my house, but it's a cozy place.", price_per_night: '43', owner_id: '1')
# flat_eleven = Flat.create(name: '1Tebrau*27', location: 'Johor', description: "Keep it simple at this peaceful and centrally-located place.", price_per_night: '39', owner_id: '1')

Booking.destroy_all
# binding.pry
booking_one = Booking.new(start_date: Date.new(2023,5,15), end_date: Date.new(2023,5,20), customer_id: 2, flat_id: 2)
# booking_two = Booking.create(start_date: Date.new(2023,6,18), end_date: Date.new(2023,6,23), customer_id: 2, flat_id: 4)
# booking_three = Booking.create(start_date: Date.new(2023,6,1), end_date: Date.new(2023,6,6), customer_id: 2, flat_id: 5)
# booking_four = Booking.create(start_date: Date.new(2023,6,9), end_date: Date.new(2023,6,14), customer_id: 2, flat_id: 9)
# booking_five = Booking.create(start_date: Date.new(2023,6,16), end_date: Date.new(2023,6,17), customer_id: 2, flat_id: 3)
