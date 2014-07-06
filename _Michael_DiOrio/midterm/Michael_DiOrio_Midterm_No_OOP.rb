require 'json'
require 'rest-client'
require 'twitter'
require 'TweetStream'

# # ## grab from twitter
# twitter_client = RestClient.get('https://api.twitter.com/1.1/trends/place.json?id=1')
# twitter_json = JSON.load(twitter_client)
# puts twitter_json

@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "OerU09ehRUZ5KOXMRPj2BOHh6"
  config.consumer_secret     = "KaOIq8Y8xLAIM51AZLJCK1E1Zs5d4uZAl1KFxxN8oRvKxlwMG9"
  config.access_token        = "292110213-3P0uHIyz9q25mOKTaI4G48Jzv7xoR7GKI5pt8hVA"
  config.access_token_secret = "BI639AC1vn74tlguEdilmP7lWXlTOxsh1WXEDYjy7AP7W"

end

def get_input
	answer= gets.chomp.downcase
end

def question

puts "Are you interested in seeing social media information from NYC, LA, Boston, or Chicago?"
@location= get_input
#puts @location
	if @location != "boston" and @location != "chicago" and @location !="boston" and @location !="nyc"
		puts "Please enter a valid city"
		@location= get_input
	else
	end
puts "Are you interested in seeing the top 10 trends (trends) or a selection of 10 tweets (tweets) from that city?"
@selection= get_input

end

def location_hash
@location_check= {}
@location_check[:la]= "2442047"
@location_check[:boston]= "2367105"
@location_check[:nyc]= "2459115"
@location_check[:chicago]= "2379574"
end

def check_location
@location_check.each do |k, v|
if k== @location.to_sym
 @woeid= v
#puts "sucess"
#puts @woeid
	else
	#puts "fail"
end
end
end

def user_search

	if @selection == "trends"
		#twitter_hash= {trends:trends, as_of: as_of, created_at: created_at, locations:locations}
		trending = []
		@count=1 
		trending << @client.trends(id = @woeid).attrs.flatten
		puts "Here are your Top 10 Trends! for #{@location}"
		trending[0][1].each do |names|
		 	puts "#{@count} #{names[:name]}"
		 	@count +=1
		 end
	elsif @selection== "tweets"
		@count=1 
		puts "Here are your 10 tweets for #{@location}"
		@client.search(@location, :result_type=>"recent").take(10).each do |tweet|
	#   wanted to do a word cloud full_tweet<< tweet.text.split(' ')
		puts "#{@count} #{tweet.text}"

		@count +=1
		end
	else
		puts "please reselect trends or tweets!"
	end
end


question
location_hash
check_location
user_search
