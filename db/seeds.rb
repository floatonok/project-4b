# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Home.destroy_all
# SectionGrid.destroy_all
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

section_grid_1 = SectionGrid.new
section_grid_1.occupied = true
section_grid_1.section_id = 1
section_grid_1.home_id = 1
if section_grid_1.save
  puts 'Section Grid Saved!'
end

section_grid_2 = SectionGrid.new
section_grid_2.occupied = true
section_grid_2.section_id = 1
section_grid_2.home_id = 1
if section_grid_2.save
  puts 'Section Grid Saved!'
end

section_1 = Section.new
section_1.height = 10
section_1.width = 20
if section_1.save
  puts 'Section Saved!'
end
