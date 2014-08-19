class MessagesController < ApplicationController
	def index
		@message = Message.new
	end

	def new
		@message = Message.new
	end

	def create
		require 'twilio-ruby'

		# put your own credentials here
		account_sid = 'AC6468ee095ac8ee4a16bb8a5c426f1262'
		auth_token = '693e505a0fd1c5e9185ebf6cb9c606c3'

		# set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = Message.new
		@to = params[:message]
		@number = @to["number"].to_i
		# binding.pry
		@body = @to["msg"]
		

		@client.account.messages.create(
		  :from => '+12076186453',
		  :to => @number,
		  :body => @body
		)	

		redirect_to root_path
	end
end
