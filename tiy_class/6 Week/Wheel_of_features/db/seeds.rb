# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


[
  'Random name generation',
  'Implement a join table!',
  'Implement a polymorphic relationship!',
  'TIY will buy you a beer.',
  'Implement user authentication.',
  'Delete bootstrap. Re-implement the styles yourself.',
  'Implement user authorization. Admins have full access to everything. Normal users can not create/edit/delete. They can only read.',
  'Create your application in Sinatra - bye bye rails!',
  'Use the Middleman gem - bye bye rails!',
  'Use MongoDB instead of mysql - bye bye relationships!',
  'Convert HAML to HTML without an automagic converter'
].each do |feature|
  Feature.create(name: feature)
end
