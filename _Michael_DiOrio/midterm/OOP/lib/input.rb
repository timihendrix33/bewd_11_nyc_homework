# class input
# 	attr_accessor: decision, decision2, location

# 	def initialize (decision, decision2)
# 		@decision= decision
# 		@decision2= decision2
# 		@location= location


# 	def question

# 		if decision= "tr" or "t"
# 			puts "success"
# 		else 
# 			puts "Please enter tr or t"
# 			decision= get_input
# 		end

# 	end



# puts "Are you interested in seeing social media information from NYC, LA, Boston, or Chicago?"
# @location= get_input
# #puts @location
# 	if @location != "boston" and @location != "chicago" and @location !="boston" and @location !="nyc"
# 		puts "Please enter a valid city"
# 		@location= get_input
# 	else
# 	end
# puts "Are you interested in seeing the top 10 trends (trends) or a selection of 10 tweets (tweets) from that city?"
# @selection= get_input

# end


# #Building Class
# class Building
#   attr_accessor :name, :address, :apartments

#   def initialize(name, address)
#     @address = address
#     @name = name
#     @apartments = []
#   end

#   def view_apartments
#     puts "------------#{@name} Apartment List--------------"
#     @apartments.each do |apartment|
#       puts apartment
#       puts (apartment.is_occupied? ? apartment.renter : "This apartment is vacant")
#     end
#   end

#   def to_s
#     "Building #{name} at #{address} has #{@apartments.count} apartments."
#   end
# end
