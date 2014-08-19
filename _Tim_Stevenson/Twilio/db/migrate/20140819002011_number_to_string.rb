class NumberToString < ActiveRecord::Migration
  def change
  	remove_column :messages, :number
  	add_column :messages, :number, :string
  end
end
