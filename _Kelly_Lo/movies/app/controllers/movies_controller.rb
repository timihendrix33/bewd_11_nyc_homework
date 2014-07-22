class MoviesController < ApplicationController
  def index
    @movies = Movie.search_for(params[:q])
  end

  def show
  	load_movie
  end

  def new
  	@movie = Movie.new
  end

  def create
  	@movie=Movie.new(safe_movie_params)
  	@movie.save 

  	redirect_to movie_path(@movie)
  end 

  private 
  def safe_movie_params
  	params.require('movie').permit(:title, :description, :year_released)
  end 

  def edit
  	load_movie
  end

  def load_movie
  	@movie=Movie.find(params[:id])
  end

  def update
  	load_movie
  	@movie.update safe_movie_params
  	Redirect to '@movie_path'
  end 
end
