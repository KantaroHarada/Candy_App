class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :c_name
      t.integer :c_number
      t.integer :c_exp
      t.integer :c_sec
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
