class MoviesController < ApplicationController
	attr_accessor :title, :description, :year_released

    def initialize #(title, description)
      @title = title
      @description = description
      @year_released = year_released
    end

  def index

    @movies = Movie.all

    # { |e|  }
    # Movie.find_each do |title, description, year|
    #   puts "#{title}\n"
    end
end

    # @movies[:title] ?

  	# CreateMovies = []
  	# CreateMovies
  	# return CreateMovies.all
  # @movies = CreateMovies.all

	# Movies.each do |title|
 #  		puts "#{title}\n"
 #  	end


  # class Movies_List
  # attr_accessor :title, :description, :year_released

		# def initialize(title, description, year_released)
		# 	@title = title
		# 	@description = description
		# 	@year_released = year_released
		# end

  	# Movies(title).each do |title|
  	# 	return title
  	# end
  
 # end
