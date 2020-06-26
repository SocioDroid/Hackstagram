# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.create([
    {username: "test1", first_name: "test", last_name: "1", email: "test1@test.com", password: "password"},
    {username: "test2", first_name: "test", last_name: "2", email: "test2@test.com", password: "password"},
    {username: "test3", first_name: "test", last_name: "3", email: "test3@test.com", password: "password"},
])