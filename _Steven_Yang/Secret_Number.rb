secret_number = 1

def user_input
	gets
end

def IsguessCorrect(guess)
	if guess == 1
		return answer = 'YES'
	else 
		return answer = 'NO'
	end
			
end

puts "Please take you guess at my secret_number"
guess = user_input

answer = IsguessCorrect(guess)
puts "is your guess correct? #{answer}"

