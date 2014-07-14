# Create a command line based application that fulfills these criteria:

# Takes user input and handles bad input 
# (i.e. You expect numbers and they give you a letter).
# Connects to a 3rd party api where the call varies based on
# what the user gives you.
# Must be object oriented. You must instantiate modeled classes. 
# The only file that can run without classes is your runner.
# Push code on Github.

require 'json'
require 'rest-client'
require 'twitter'
require_relative 'lib/tweet'
require_relative 'lib/question'

# Application-only Authentication: 
# from: https://github.com/sferik/twitter/blob/master/examples/Configuration.md
config = {
  :consumer_key    => "3AGoAUh5KfXnnUrenbk40SPEo",
  :consumer_secret => "CQPFXblVgEayPSjPyIHWJNoYAvoMGD3uuzdILq27tryt2V9Hqi"
	}
client = Twitter::REST::Client.new(config)


def create_question(client)
	puts "What term do you want to search?"
	query_term = gets.strip

	puts "How many tweets do you want?"
	query_return_count = gets.to_i

	Question.new(query_term, query_return_count)
end


puts "Welcome to the Twitter API App \n"
puts "helping you search tweets @justinbieber since 2014..."

question = create_question(client)
#retrieve the info from the Twitter API
tweet_hash = client.search("to:justinbieber #{question.query_term}", :result_type => "recent", :lang => "en").take(question.query_return_count)

count = 0
0.upto(tweet_hash.length) do
	id = tweet_hash[count]
	author = tweet_hash[count]["user"]
	count += 1

	puts "#{id} ... #{author}"
end

# 0.upto(tweet_hash.length) do |item|
# 	id = tweet_hash[item]
#   author = tweet_hash[item].user
#   place = tweet_hash[item].place
#   text = tweet_hash[item].text

# 	#call and pass to Tweet class
# 	Tweet.new(id, author, place, text)
# end

puts "ready to view tweets? (y/n)"
response = gets.strip

if response == 'y'
	query.view_tweets
else
	puts "thanks!"
end





