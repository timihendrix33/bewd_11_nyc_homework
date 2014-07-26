class UrlsController < ApplicationController

	def index
		@urls = Url.all
	end

	def create

	    @url = Url.new(safe_url_params)

	    @url.hash_code = rand(10000)


	    if @url.save
	      redirect_to url_path(@url)
	    else
	      render 'new'
	    end		
	end

	def new
		@url = Url.new
	end

	def show
		load_url
	end

	def redirectors

	end

	def preview

	end

  private 
  def safe_url_params
    params.require('url').permit(:link, :hash_code)
  end

  def load_url
  	@url = Url.find_by id: params[:id]
  end

end
