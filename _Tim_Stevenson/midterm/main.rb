
require 'json'
require 'rest-client'

require_relative 'lib/recipient.rb'

def create_recipient

	@description_list = ["For Couples", "For Him", "For Her", "Teens", "Kids & Baby"]

	puts "--------------New Gift Recipient---------------"
	puts "Who are you shopping for?"
	name = gets.strip
	puts "Which of these best describes #{name}? \n\n #{@description_list}"
	description = gets.strip

	Recipient.new(name, description)
end



puts "******************Welcome to Gift Picker!****************** \n \n \n"

recipient = create_recipient

puts 



