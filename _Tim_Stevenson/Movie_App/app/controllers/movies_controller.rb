class MoviesController < ApplicationController
	attr_accessor :name, :description, :year_released

	# def initialize(name, description, year_released)
	# 	@name = name
	# 	@description = description
	# 	@year = year_released
	# end

  def index


	@movies = Movie.all

		# @movies = "#{@name} #{@description} #{@year}"
	

  end
end
