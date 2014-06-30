# random number game - user has to guess a random number between 1 and 9 and the
# game must tell them if they are right or wrong

def check_number (input, number)
  # while loop tells runs the program until you guess correctly
  while input != number do
    if input > number
      puts "Too High!"
    elsif input < number
      puts "Too Low!"
    end
    # get new input if previous input is incorrect
    input = gets.chomp.to_i
  end
  puts "Winner!!! You got it!"
end

puts "Random Number Game! Guess a number between 1 and 9."

# get initial input
input = gets.chomp.to_i
# create array of numbers for program to sample
number_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
number = number_array.sample

check_number(input, number)