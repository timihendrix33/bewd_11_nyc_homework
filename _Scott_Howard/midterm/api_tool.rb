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

#grab info from twitter 
twitter_client = RestClient.get("")
#parse that info
twitter_json = JSON.load(twitter_client)