class ChangeMessageToMsg < ActiveRecord::Migration
  def change
  	remove_column :messages, :message
  	add_column :messages, :msg, :string  	
  end
end
