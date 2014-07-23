#Arrays
# A Group of data
# .each shows all parts of an array for a do statement
=begin
a = [1,2,3,4, "String", "Dude", 432]
puts a[0]
puts a[2]
puts a[6]
=end
=begin
names = ["Nick", "Kevin (The Code Wrangler)", "Calvin", "Sally", "Andrew"]

names.each do |name| #name here would be a local variable only available in the do loop
	puts "This is the users name: #{name}"

end

data = [1, "Sam", 4, 5, 1234]
data.each do |some_variable|
	#while running in the code block of .each it will input the "This is some text in between each array item"
	puts "This is some text"
	puts some_variable
end
=end
=begin
numbers = [5,4,3,2,1, nil]
numbers.each do	|number|
		puts '*' * 100
		print numbers[0]
		puts number
end
=end


# This is a hash it can be accessed by symbols which are in purple
# they can also be accessed by strings in yellow but not both unless defined two times differently

person = {
	name: "Jim Rambow", #This is a symbol inside a hash which gives this a value
	age: 24,
	eye_color: "Brown",
	hair_color: "Brown",
}
puts person[:name]
puts person[:eye_color]

another_person = {
"name" => "Belinda Hare",
"eye_color" => "Green",
"hair_color" => "Brown"
}

puts another_person["name"]
puts another_person["eye_color"]

third_person = {
	:name => "Jamie Kingston",
	:eye_color => "Green",
	:hair_color => "Brown",
	"children" => 2
}

puts third_person["children"]


people = [
	{name: "Sam Waller", eye_color: "Blue"},
	{name: "Will Fisher", eye_color: "Brown"}
	another_person,
	third_person,
]

people.each do |person|
	print "name: "
	puts person[:name]
	print "Eye Color: "
	puts person[:eye_color]
end

#cool method with array called map { |e|  }
#.map returns last line of code inside the array

name_list = people.map do |person|
	person[:name]
end
puts name_list



# Functions- Creating your own methods
def display_data display, data 
	puts "Persons #{display}: #{data}"
	puts 

def display_name name
	puts "Persons name: #{name}"
	name

end
def display_eye_color eye_color
	puts "Persons eye color: #{eye_color}"
	name

end
def display_hair_color hair_color
	puts "Persons hair_color color: #{hair_color}"
	name

end
def display_information person
	display_data("Name", person[:name])
	display_data("Hair Color", person[:hair_color])
	display_data("Eye Color", person[:eye_color])
end
people.each do |person|
	display_name(person[:name])
end