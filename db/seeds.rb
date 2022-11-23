# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

# Hitman.create(name: "Star Wars", price: 5, description: "likes to run his victims over", rating: 5)

require "faker"

puts "Destroying"
User.destroy_all
Booking.destroy_all
Hitman.destroy_all
puts "Done Destroying"

puts "Creating user"
my_user = User.create(username: "Abstergo", email: "alpha@test.com", password: "123123")
puts "Done creating user"

puts "#{my_user.username} is creating Hitmen"
hitman_1 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Will get the job done methodically", method: "gun", user: my_user)
hitman_2 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Will get the job done maybe...", method: "punch", user: my_user)
hitman_3 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Will get the job done possibly", method: "car", user: my_user)
hitman_4 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Will get the job done in a second. Dont blink!", method: "superpower", user: my_user)
hitman_5 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Has some serious issues, thread carefully", method: "knife", user: my_user)
hitman_6 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Will judge you before a job", method: "fatality", user: my_user)
hitman_7 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Will forget he has a job...", method: "poison", user: my_user)
hitman_8 = Hitman.new(name: Faker::Games::Pokemon.name, price: Faker::Number.number(digits: 5), description: "Will ruin the job but he is a fun guy", method: "gun", user: my_user)
hitman_1.save!
hitman_2.save!
hitman_3.save!
hitman_4.save!
hitman_5.save!
hitman_6.save!
hitman_7.save!
hitman_8.save!

puts "Done creating Hitmen"


puts "Creating bookings"
my_booking_1 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_1)
my_booking_2 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_2)
my_booking_3 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_3)
my_booking_4 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_4)
my_booking_5 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_5)
my_booking_6 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_6)
my_booking_7 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_7)
my_booking_8 = Booking.new(name: "Target #{Faker::TvShows::Friends.character}", user: my_user, hitman: hitman_8)

my_booking_1.save!
my_booking_2.save!
my_booking_3.save!
my_booking_4.save!
my_booking_5.save!
my_booking_6.save!
my_booking_7.save!
my_booking_8.save!

puts "Done creating bookings"
