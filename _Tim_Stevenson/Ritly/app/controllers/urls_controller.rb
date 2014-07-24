class UrlsController < ApplicationController

	def index
		@urls = Url.all
	end

	def create
		def generate_hash
			hash = rand(10000)
		end
		
	    @url = Url.new(safe_url_params)
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
