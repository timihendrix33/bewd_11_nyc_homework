class Movie < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :description, length: {minimum: 10}
	validates :year_released, numericality: {greater_than: 0}
	def validation_error
		errors[:title] = "You need a title."
		errors[:description] = "must be greater than 10 characters."
		errors[:year_released] = "is an integer and must be greater than 0."
	end

	def self.search_for(query)
		Movie.where('title LIKE :query OR description LIKE :query OR year_released LIKE :query', query: "%#{query}%")
	end

end
