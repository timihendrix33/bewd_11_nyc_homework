
# Assignment
# ==============================================================================

# Create a command line based application that fulfills these criteria:

# 1) Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# 2) Connects to a 3rd party api where the call varies based on what the user gives you.
# 3) Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# 4) Push code on Github.

# Pseudocode
# ==============================================================================

# Choose a spot
# Provide a report

# Third Party
# ==============================================================================

# Require library of methods from json
require 'json'
# Require library of methods from rest-client
require 'rest-client'

# The San Francisco county feed
@county_san_francisco_json = RestClient.get('http://api.spitcast.com/api/county/spots/san-francisco/')
@county_san_francisco = JSON.load(@county_san_francisco_json)

def get_input
  #Get input from the user.
  return gets.chomp
end

def build_spots(county)

	@spots = Array.new(county.length) {Hash.new}

	i = 0

	county.each do |spot|
		# Store the spot name and ID
		@spots[i][:spot_name] = spot["spot_name"]
		@spots[i][:spot_id] = spot["spot_id"]
		i += 1
	end

	# puts @spots

end

def get_forecast(chosen_spot) 

	if chosen_spot == "Fort Point"
		@spot_forecast_json =  RestClient.get('http://api.spitcast.com/api/spot/forecast/113/')
		@spot_forecast = JSON.load(@spot_forecast_json)
	elsif chosen_spot == "Eagles Point"
		@spot_forecast_json =  RestClient.get('http://api.spitcast.com/api/spot/forecast/649/')
		@spot_forecast = JSON.load(@spot_forecast_json)
	elsif chosen_spot == "Deadmans"
		@spot_forecast_json =  RestClient.get('http://api.spitcast.com/api/spot/forecast/648/')
		@spot_forecast = JSON.load(@spot_forecast_json)
	elsif chosen_spot == "Kellys Cove"
		@spot_forecast_json =  RestClient.get('http://api.spitcast.com/api/spot/forecast/697/')
		@spot_forecast = JSON.load(@spot_forecast_json)
	elsif chosen_spot == "North Ocean Beach"
		@spot_forecast_json =  RestClient.get('http://api.spitcast.com/api/spot/forecast/114/')
		@spot_forecast = JSON.load(@spot_forecast_json)
	elsif chosen_spot == "South Ocean Beach"
		@spot_forecast_json =  RestClient.get('http://api.spitcast.com/api/spot/forecast/117/')
		@spot_forecast = JSON.load(@spot_forecast_json)
	end

end

build_spots(@county_san_francisco)


puts "Welcome to the Ruby version of Spitcast: the best forecast for surf spots in the San Francisco Bay Area, including"

puts "\n"

@ol = 1

@spots.each do |spot_name| 	
	puts "#{@ol}. #{spot_name[:spot_name]}"
	@ol += 1
end

puts "\n"

loop do 
	print "Choose a surf spot: "
	@chosen_spot = get_input
	if @chosen_spot.empty?
	    puts "Oops, try again."
  elsif @chosen_spot.is_a? Integer
    puts "Oops, try again."
  else
    break
  end
end

get_forecast(@chosen_spot)

puts "\n"
puts "Your forecast for #{@spot_forecast[0]["spot_name"]} on #{@spot_forecast[0]["date"]}:"

puts "\n"

@spot_forecast.each do |hour|
	puts "#{hour["hour"]} Wave size: #{hour["size"]}, Swell: #{hour["shape_detail"]["swell"]}"
end


