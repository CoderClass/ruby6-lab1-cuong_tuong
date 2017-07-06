# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Photo.count == 0
	30.times do 
	    Photo.create username: Faker::Name.name, caption: Faker::Company.name, url: Faker::Avatar.image, likes_count: Faker::Number.between(1,100)
	end
end


Photo.all.each do |photo|
	rand(30).times do
		photo.comments.create! username: Faker::Internet.user_name, body: Faker::Hipster.sentence
	end
end