class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mailadress
      t.string :adress
      t.string :pass
      t.string :passconf

      t.timestamps
    end
  end
end
