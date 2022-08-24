# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

daniel = User.create(email: "daniel@gmail.com", password: "hello123", first_name: "daniel", last_name: "santillan")

bocho = Car.create(user_id: daniel, brand: "mercedes", year: "1999", color: "white", model: "bocho", plate: "wrr44w", price: "1000", url: "google.com")

# booking1 = Booking.create(car_id: bocho, user_id: daniel)
