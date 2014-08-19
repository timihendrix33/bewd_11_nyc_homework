class AddColumnsToCollection < ActiveRecord::Migration
  def change
  	add_column :collections, :recipe_id, :integer
  	add_column :collections, :user_id, :integer
  end
end
