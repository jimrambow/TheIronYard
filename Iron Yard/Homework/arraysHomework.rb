# Create a module that makes a quiz, use a hash to store questions
# and to store answers. Minimum of 10 questions max of 20
# Must output number of correct answers in percentage or rational number.
answers = []
sum = 0
questions = [
	{ 
	question: "Who is the coolest person in the world?",
	answer: "a",
	a: "nick",
	b: "jim",
	c: "Nick Cannon, cause he's hilarious"
	},
	{
	 question: "What is the length in inches of a foot?",	
	 answer: "c",
	 a: "8",
	 b: "24",
	 c: "12"
	},
	{
	 question: "How tall is the empire state building in feet?",
	 answer: "b",
	 a: "1000",
	 b: "1250",
	 c: "29"
	},
	{
	 question: "What is hello in spanish?",
	 answer: "b",
	 a: "What up G?",
	 b: "Hola",
	 c: "Hi, we're from Missouri can you take our picture?"
	},
	{
	 question: "How much is a bakers dozen?",
	 answer: "c",
	 a: "10",
	 b: "20",
	 c: "13"
	},
	{
	 question: "How much should you tip if a waiter does their job?",
	 answer: "a",
	 a: "20%",
	 b: "100%",
	 c: "5%"	
	},
	{
	 question: "What is my last name?",
	 answer: "a",
	 a: "Rambow",
	 b: "Rambo",
	 c: "Rainbow"
	},
	{
	 question: "Who is a famous golfer?",
	 answer: "b",
	 a: "LeBron James",
	 b: "Tiger Woods",
	 c: "Jason Heyword"
	},
	{
	 question: "What is the Iron Yard's Address?",
	 answer: "c",
	 a: "1337 Hollywood Drive",
	 b: "1428 Watershade Court",
	 c: "510 Mill Street"	
	},
	{
	 question: "Will I fail this course?",
	 answer: "b",
	 a: "Yes",
	 b: "No",
	 c: "Most definitely"
	},
]

questions.each do | hash |
	puts hash[:question]
	print "a. "
	puts hash[:a]
	print "b. "
	puts hash[:b]
	print "c. "
	puts hash[:c]
	response = gets.chomp.downcase.to_s

if response == hash[:answer]
    puts "Correct!"
    sum += 1

else
	puts "Wrong :("
end
end
puts "Your total number or correct answers is: #{sum}" 
percentage = (sum.to_f / 10.0)
puts "Your percentage grade is: #{percentage}"

