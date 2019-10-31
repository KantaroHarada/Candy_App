class AddIndexToUsersMailadress < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :mailadress, unique: true
  end
end
