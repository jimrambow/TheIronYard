
puts "String homework problems"
#long puts lines are in between sets.
# Captialize!
x = "hello"
x.capitalize! 
puts x

puts "------------------------------"

# clear
x = "hello world!"
x.clear
puts x
puts x.class

puts "------------------------------"

# empty - returns false if there is something in the string, returns true if
# the string is blank.
x = "Dude...sup, no what does mine say?! DUDE"
puts x.empty?
puts "".empty?

puts "------------------------------"

# replace - replace can be used to replace a strings original content by adding a new string at the end of your variable.replace
x = "NO, WHAT DOES MINE SAY!!!!! SWEET!!!!! WHAT DOES MINE SAY!"
puts x.replace "That movie is terrible. Just awful"


puts "------------------------------"

# Insert - can be used to insert peices into a string
x = "hello world"
puts x.insert(11, " lets get jiggy with it.")

puts "------------------------------"

puts "fixnum homework problems"
#fdiv what the float of a large division would be

x = 1337
puts x.fdiv(29)
puts "------------------------------"


#absolute value

x = -1337
puts x.abs
puts (1337).abs 

puts "------------------------------"

# zero? returns a true if the number is 0 and false if it is not
puts 0.zero?
puts 1337.zero?

puts "------------------------------"

# next shows the next integer in line
puts 0.next
puts -1.next
puts 1.next


puts "------------------------------"

#moving numbers to their numeric power

puts 3 ** 3

puts "------------------------------"

#
puts "float homework methods"

#floor makes larges integer show up less than or equal to float

puts 3.7.floor
puts 4.0.floor
puts -3.7.floor

puts "------------------------------"

#Ceil does the exact opposite of floor for floats turning into integers

puts 3.7.ceil
puts 4.0.ceil
puts -3.7.ceil

puts "------------------------------"

#modulo is a way to see the division of one float with another

puts 100.25.modulo(10.5)
puts 6.5.modulo(2.23)

puts "------------------------------"

#nan returns true if the float is an invalid floating point number

x = 1.0
puts x.nan?
#returns false because it is a number
y = 0.0/0.0
puts y.nan?
#returns true because it isnt a number

puts "------------------------------"

#round seems pretty important to have so lets do rounding of floats

puts 1.4.round
puts 2.5.round
puts (-3.2).round

#this can also be used to round to the nth digit

puts 1.589304.round(3)
puts 2.4620937485596.round(6)

puts "------------------------------"

puts "boolean section of methods"

#Its kind of hard for me to think of 5 different methods of showing the same thing
#Boolean methods are just true or false statements that can determine the outcome of
# if  and else statements unless you just want us to demonstrate the boolean operators
x == 10
y == 20
puts x == y  #True if a is equal to b.
puts x != y #True if a is not equal to b.
puts x > y  #True if a > b.
puts x < y  #True if a < b.
puts x >= y  #True if a >= b.
puts x <= y  #True if a <= b.


