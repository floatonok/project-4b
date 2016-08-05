# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Home.destroy_all

# home_1 = Home.new
# home_1.size = 2
# if home_1.save
#   puts 'Home Saved!'
# end

# user_1 = User.new
# user_1.name = 'Isabella'
# user_1.email = 'isabella@hello.com'
# user_1.home_id = 7
# if user_1.save
#   puts 'User Saved!'
# end

user_2 = User.new
user_2.name = 'Glenn'
user_2.email = 'glenn@hello.com'
user_2.home_id = 7
if user_2.save
  puts 'User Saved!'
end
