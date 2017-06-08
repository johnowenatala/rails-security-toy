# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Sample data
if User.all.empty?
  10.times do
    User.create(
      email: Faker::Internet.email,
      password: "#{Faker::Hacker.verb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}", # nice password
      name: [nil,Faker::Name.name, Faker::Name.first_name].sample
    )
  end
end