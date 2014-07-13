require 'rubygems'
require 'oauth'
require 'json'

require_relative 'lib/tweets'
require_relative 'lib/trends'
require_relative 'lib/connection'

### This is the entire program
puts "Would you like to see the tweet trends (tr) worldwide or the latest tweets (t) based on your favorite keyword?"
connection_open= Connection.new(gets.chomp) ##O
connection_open.type ## tweets or trends url path and input variables such as keyword/counts
connection_open.configure ## connect to twitter api
connection_open.output ## output data

#### Testing Trends Class
test= Trends.new
test.create
puts test

### Testing Tweets Class

test2= Tweets.new
test2.create
puts test2
puts test2.id

