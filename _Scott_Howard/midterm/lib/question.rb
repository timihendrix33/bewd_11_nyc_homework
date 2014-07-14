#Query class
class Question
	attr_accessor :query_term, :query_return_count, :tweets

	def initialize (query_term, query_return_count)
		@query_term = query_term
		@query_return_count = query_return_count
		@tweets = []
	end

	def view_tweets
		puts "-------------#{query_term} results ------"
		@tweet_hash.each do |tweet|
			puts "#{tweet.id} ... #{tweet.author}... #{tweet.place}...#{tweet.text}"
		end
	end
end
