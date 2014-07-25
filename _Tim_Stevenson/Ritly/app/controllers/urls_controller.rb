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

	end

	def redirectors

	end

	def preview

	end

  private 
  def safe_shirt_params
    params.require('url').permit(:link, :hash_code)
  end

end
