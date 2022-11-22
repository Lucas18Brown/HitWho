# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

# Hitman.create(name: "Star Wars", price: 5, description: "likes to run his victims over", rating: 5)

User.create(username: "Tom", email: "doit1@gmail.com", password: "123456")

Hitman.create(name: "Kind One", price: 5, description: "likes to beat his victims to death", rating: 5, user: User.first)
Hitman.create(name: "Agent", price: 2, description: "likes to run his victims over", rating: 5, user: User.first)




Booking.create(name: "test", user: User.first, hitman: Hitman.first)
Booking.create(name: "test2", user: User.first, hitman: Hitman.first)
Booking.create(name: "test3", user: User.first, hitman: Hitman.first)
