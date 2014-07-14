#Recipient Class
class Recipient
	attr_accessor :name, :description

	def initialize(name, description)
		@name = name
		@description = description
	end

	def to_s
		"You're shopping for #{@name}, in the #{@description} gift category."
	end

	def search_gifts |description|
		puts "Would any of these interest #{name}? Enter (1), (2) or (3)"

		etsy_api = JSON.load(RestClient.get("https://openapi.etsy.com/v2/categories/#{description}?api_key=mgzshgbo2hgqvgsejc7pgdun"))
	end
end
