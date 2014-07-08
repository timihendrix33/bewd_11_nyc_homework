require 'json'
require 'rest-client'

TwitterClient = RestClient.get("https://api.twitter.com/1.1/search/tweets.json")
Twitterjson = JSON.load(TwitterClient)

