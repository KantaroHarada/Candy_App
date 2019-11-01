class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :p_name
      t.string :p_photo
      t.string :p_detail
      
      t.references :stock, foreign_key: true
      t.references :genre, foreign_key: true
      t.references :manufacturer, foreign_key: true
      t.references :cost, foreign_key: true
      t.timestamps
    end
  end
end
