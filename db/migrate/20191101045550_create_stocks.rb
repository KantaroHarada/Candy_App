class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :p_stock

      t.timestamps
    end
  end
end
