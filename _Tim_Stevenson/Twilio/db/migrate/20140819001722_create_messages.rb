class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :friend
      t.integer :number
      t.string :message

      t.timestamps
    end
  end
end
