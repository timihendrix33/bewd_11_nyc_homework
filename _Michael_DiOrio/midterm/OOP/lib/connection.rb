## Class that opens Twitter API connection. Not sure if I'm doing it right


class Connection 
	attr_accessor :decision, :tweets

	def initialize(decision)
		$decision= decision
		$tweets= tweets ## $tweets is the json.parse(body) from Twitter api
	end

## this method takes the user's input (trends or tweets) and then assigns the variables appropriately. 
## If the user wants to see trends then the configure method will change the path to 1.1/trends
## The address in configure is broken into baseurl (api.twitter.com) and then the path/query.
## id =>1 for trends around the world. For decision "t" the user is asked the keyword they want to search on and the number of tweets

def type 
	if $decision =="t"
		puts "Ok cool, what keyword would you like to search on?"
		@question= gets.chomp
		puts "Ok, and how many tweets?"
		@count_tweets= gets.chomp
		@path    = "/1.1/search/tweets.json"
		@query   = URI.encode_www_form(
	  		"q" => "#{@question}",
	  		"count" => "#{@count_tweets}",)
	elsif $decision == "tr"
		puts "Ok, here are the latest trends from around the world!"
		@path = "/1.1/trends/place.json"
		@query   = URI.encode_www_form(
   			"id" => "1",)
	else
		"reinput please"
	end
end

## Ok this is the method that connects to the Twitter API and sends a success message if it connects successfully. 
## Takes in the consumer/access tokens
## line 67 is important since $tweets is the info from the API. Is there a better way to do this?

def configure
	# inset /1.1 types
	baseurl = "https://api.twitter.com"
	address = URI("#{baseurl}#{@path}?#{@query}")
	request = Net::HTTP::Get.new address.request_uri


	# Set up HTTP.
	http             = Net::HTTP.new address.host, address.port
	http.use_ssl     = true
	http.verify_mode = OpenSSL::SSL::VERIFY_PEER

	##credential oauth

	consumer_key = OAuth::Consumer.new(
	    "OerU09ehRUZ5KOXMRPj2BOHh6",
	    "KaOIq8Y8xLAIM51AZLJCK1E1Zs5d4uZAl1KFxxN8oRvKxlwMG9")
	access_token = OAuth::Token.new(
	    "292110213-3P0uHIyz9q25mOKTaI4G48Jzv7xoR7GKI5pt8hVA",
	    "BI639AC1vn74tlguEdilmP7lWXlTOxsh1WXEDYjy7AP7W")

	# Issue the request.
	request.oauth! http, consumer_key, access_token
	http.start
	response = http.request request

	# Parse and print the Tweet if the response code was 200
		if response.code == '200' then
			puts "success"
			$tweets= JSON.parse(response.body)
		else
			puts "please reinput"
		end
end

## Ok, until I figure out how to use the Trends and Tweets classes I'm stuck with this
## I use hashes and arrays to output the information from the Twitter API based on the user's input
## If the user types in "tr" they will receive a list of the latest worldwide trends
## If the user types in "t" they will be prompted for a keyword and the amount of tweets. 

def output
	if $decision =="tr"
		@tweet_array = []
		$tweets[0]["trends"].each do |tweet|
	      name= tweet["name"]
	      query_trend= tweet["query"]
	      promoted_content= tweet["promoted_content"]
	      tweet_hash= {name:name, query_trend:query_trend, promoted_content:promoted_content}
	      @tweet_array << tweet_hash
	  	end

		   @count=1
		   @tweet_array.each do |simple|
		     puts "#{@count}. TREND:#{simple[:name]} QUERY:#{simple[:query_trend]} PROMOTED:#{simple[:promoted_content]}"
		     @count +=1
		    end
	elsif $decision=="t"
	    @tweet_array = []
		  $tweets["statuses"].each do |tweet|
		  id= tweet["user"]["screen_name"]
		  text=tweet["text"]
		  location= tweet["user"]["location"]
		  followers_count= tweet["user"]["followers_count"]
		  twitter_hash= {text:text, id: id, location: location, followers_count: followers_count}
		  @tweet_array << twitter_hash
		 end
	  	
		  puts "Here are you latest tweets\n"
		  @count=1
		  @tweet_array.each do |simple|
		  	puts "#{@count}. ID:#{simple[:id]} | TWEET:#{simple[:text]} | LOCATION:#{simple[:location]} | FOLLOWERS:#{simple[:followers_count]}"
		  	@count +=1
			end

	else
	 puts  "Not sure"
	end
end
end
