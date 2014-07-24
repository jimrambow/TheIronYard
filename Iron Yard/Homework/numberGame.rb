# Assignment 1:

# Create a number guessing game. 
# Game should pick a random number between 1 and 100 and ask you for a guess.
# If the guess is less than the number, inform the user and let them guess again. 
# If the guess is greater than the number, inform the user and let them guess again. 
# If the guess is correct, inform the user and quit.

# Bonus: write the opposite program: you, the user, pick a number between 1 and 100. 
# The computer has to guess the number. 
# You tell it whether it's too high, too low, or right on after each guess. 
# The computer gets five guesses.

gameOn = true
higher = true
lower = true
answer = rand(100)
puts "Welcome to the guess the number game! Choose a number (1-100)"
while gameOn != false 
guess = ""
guess = gets.chomp.to_i
puts answer #this is so you can cheat and see my number

  if guess == answer
    puts "That is correct!"
    break
    gameOn == false
    if gameOn == false
    end


  elsif guess > answer
      if higher == true
    puts "I'm sorry thay number is higher than the answer. Guess again."
      end

  elsif guess < answer
      if lower == true
    puts "I'm sorry that number is lower than the answer. Guess again."
      end

  end
end