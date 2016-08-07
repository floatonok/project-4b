# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Home.destroy_all
# Cell.destroy_all
# Section.destroy_all

home_1 = Home.new
home_1.color = '#95AB63'
home_1.size = 2
if home_1.save
  puts 'Home Saved!'
end

user_1 = User.new
user_1.name = 'Isabella'
user_1.email = 'isabella@hello.com'
user_1.home_id = 1
if user_1.save
  puts 'User Saved!'
end

user_2 = User.new
user_2.name = 'Glenn'
user_2.email = 'glenn@hello.com'
user_2.home_id = 1
if user_2.save
  puts 'User Saved!'
end

# section_1 = Section.new
# section_1.height = 20
# section_1.width = 10
# if section_1.save
#   puts 'Section Saved!'
# end
#
# section_2 = Section.new
# section_2.height = 5
# section_2.width = 5
# if section_2.save
#   puts 'Section Saved!'
# end
#
# section_3 = Section.new
# section_3.height = 7
# section_3.width = 21
# if section_3.save
#   puts 'Section Saved!'
# end
