class AddCulmnsToBaskets < ActiveRecord::Migration[5.1]
  def change
    add_reference :baskets, :user, foreign_key: true
    add_reference :baskets, :product, foreign_key: true
  end
end
