class ChangePhoneNumberColumn < ActiveRecord::Migration
  def change
    remove_column :messages, :number, :string
    add_column :messages, :number, :integer
  end
end
