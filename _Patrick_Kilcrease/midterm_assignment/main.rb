require_relative 'lib/teams'

require 'json'
require 'rest-client'

 # http://api.espn.com/:version/:resource/:method?apikey=:yourkey

#Soccer news headlines call
#espn_client = RestClient.get('http://api.espn.com/v1/sports/soccer/news/headlines?apikey=6rm42hyheg2795t9tpgrymmw')

#FiFA World Cup teams call
espn_client = RestClient.get('http://api.espn.com/v1/sports/soccer/fifa.world/teams?apikey=6rm42hyheg2795t9tpgrymmw')
espn_json = JSON.load(espn_client)


@all_teams = Array.new
@all_teams_key = Array.new
@storage = {}

#calls world cup teams & adds to storage hash
espn_json["sports"].each do |x|
	x["leagues"].each do |y|
		y["teams"].each do |z|
			team_name = z["name"]
			team_id = z["id"]
			temp = Teams.new(team_name,team_id)
			@storage[temp.name_to_s.downcase] = temp.id_to_s
end
end
end

#puts @storage["Italy"]

#define methods for program
def get_news
	@espn_json_2 = JSON.load(RestClient.get("http://api.espn.com/v1/sports/soccer/fifa.world/teams/#{@storage[@user_input]}/news?apikey=6rm42hyheg2795t9tpgrymmw"))
	@espn_json_2["headlines"].each do |x|
		puts x["headline"]
		puts "     " + x["secondaryDescription"]
		puts ""
	end
end

def check_user_input
	loop do 
		break if @storage.has_key?(@user_input)
		puts "Sorry! It looks like that team is not in the World Cup. Please enter a valid team name."
		@user_input = gets.chomp.downcase
	end 
end


#HERE'S THE ACTUAL FLOW

puts "Welcome to the World Cup News Finder!"
puts "What team do you want to find news about?"
@user_input = gets.chomp.downcase
check_user_input
get_news

#note --> program errors out if secondaryDescription on get_news function does not exit for a news story... find way to check and fix




#SCRATCH FLOW
#welcome to the app
#input team you'd like to search for
#check if team is a world cup team
	#if not, prompt to enter world cup team (include search if name is close?)
	# if yes:
#return ID for team name
#insert ID into news API call
#return ID news info


#store "team" as object with hash for ID's





