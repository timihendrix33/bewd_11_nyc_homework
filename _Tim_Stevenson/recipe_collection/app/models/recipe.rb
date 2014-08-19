class Recipe < ActiveRecord::Base
	belongs_to :cook
	has_many :users, through: :collections
end
