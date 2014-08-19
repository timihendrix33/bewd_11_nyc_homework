class RecipeBelongsToCook < ActiveRecord::Migration
  def change
  	add_column :cooks, :recipe_id, :integer
  end
end
