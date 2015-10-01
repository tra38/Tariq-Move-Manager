# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

possible_formats = []

["VHS", "DVD", "Streaming"].each do |format|
    possible_formats << Format.create(name: format)
end

10.times do
    Movie.create(title: Faker::App.name, length: rand(499) + 1, format: possible_formats.sample, release_year: rand(1800..2000), rating: rand(1..5) )
end