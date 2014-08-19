class User < ActiveRecord::Base
	has_many :collection
	has_many :recipes, through: :collections
end
