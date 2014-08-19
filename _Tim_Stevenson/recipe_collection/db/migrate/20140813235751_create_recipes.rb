class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.string :steps

      t.timestamps
    end
  end
end
