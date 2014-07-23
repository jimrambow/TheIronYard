x = "Hello World!"
y = 12
dude = "Dude Sup"
Hello_World = "Dude man sup"
z = 12.1234
your_variable = y + z
is_sam_awesome = true
is_nick_awesome = false 
=begin
#puts is_nick_awesome 
#puts is_sam_awesome
#puts z
#puts Hello_World
#puts x
#puts y
#puts dude 
#puts y + z
#puts your_variable
#puts is_sam_awesome == is_nick_awesome
=end
=begin
if 2 != 2 
	puts "Horray!"
	puts "1 is not equal to 2"	

else 
	puts "this is not true"
end
puts "enter your name"
user_input = gets 
#puts "Name:" + user_input
puts "name #{user_input}"
puts "Some math problem: #{1 + 1 + 1}"
puts 'Single quote string #{1 + 1 + 1}'
=end

#Farenheit to Celcies


 #get user input for ferenheit
# defire celcius
# define user input
# define tempurature
# get user input for Farenheit
# change user input to flaot (want to be more accurate)
# define user_input - 32 
# celcius is temperature / 1.8 
# print celcius to the user
# (F - 32 ) / 1.8

# Variable Initialization
celcius = nil
user_input = nil
temperature = nil
farenheight = nil

# Program logic
#puts farenheight.class
puts "Enter Farenheight temperature"
farenheight = gets.to_f
#puts farenheight.class
puts "Farenheight #{farenheight}"
celcius = (farenheight - 32) / 1.8
puts "Celcius #{celcius}"




