#Tweet class.
class Tweet
	attr_accessor :id, :author,:place, :text

	def initialize (id, author, place, text)
		@id = id
		@author = author
		@place = place
		@text = text
	end

	def to_s	
		if @place == null
			temp_place = "I'd rather not say"
		else
			temp_place = @place
		end

		"#{@author} said: #{@text}. He/she wrote tweet #{id} from #{temp_place}"
	end
end