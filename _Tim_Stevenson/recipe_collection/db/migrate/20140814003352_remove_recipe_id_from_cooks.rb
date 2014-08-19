class RemoveRecipeIdFromCooks < ActiveRecord::Migration
  def change
  	remove_column :cooks, :recipe_id
  	add_column :recipes, :cook_id, :integer
  end
end
