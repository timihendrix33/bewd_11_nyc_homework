###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

#Define the secret number
@secret_number = 3

#Get user input
def get_user_input
	return gets.chomp.to_s
end

#return user guess to integer
def get_guess
	return gets.chomp.to_i
end

#get user's guess
def guess_prompt
	puts "Enter your guess:"
end

#checks the player's first guess 
def check_first_guess
	if @first_guess < @secret_number
		puts "You guessed too low! You have two tries left."
	elsif @first_guess > @secret_number
		puts "You guessed too high! You have two tries left."
	else
		puts "Congratulations! You win!"
		Process.exit(0)
end
end

#checks the player's second guess
def check_second_guess
	if @second_guess < @secret_number
		puts "You guessed too low! You have one try left."
	elsif @second_guess > @secret_number
		puts "You guessed too high! You have one try left."
	else
		puts "Congratulations! You win!"
		Process.exit(0)
end
end

#checks the player's third guess
def check_third_guess
	if @third_guess < @secret_number
		puts "You guessed too low! You lose. The secret number was #{@secret_number}."
	elsif @third_guess > @secret_number
		puts "You guessed too high! You lose. The secret number was #{@secret_number}."
	else
		puts "Congratulations! You win!"
end
end

#Actual flow of the game
puts "Welcome to Patrick's secret number guessing game!"
puts "What's your name?"
user_name = get_user_input
puts "Hi #{user_name}!"
puts "Here's how this game works. You get three chances to guess the secret number, which is between 0 and 10."
#getting and checking first guess 
guess_prompt
@first_guess = get_guess
check_first_guess
#getting and checking second guess
guess_prompt
@second_guess = get_guess
check_second_guess
#getting and checking third guess
guess_prompt
@third_guess = get_guess
check_third_guess










