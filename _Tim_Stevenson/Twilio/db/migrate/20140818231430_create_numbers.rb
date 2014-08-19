class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.integer :phone_number
      t.integer :friend_id
      t.timestamps
    end
  end
end
