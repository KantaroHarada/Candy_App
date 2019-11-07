class Product < ApplicationRecord
    belongs_to :stock
    belongs_to :genre
    belongs_to :manufacturer
    belongs_to :cost
    has_many :basket, dependent: :destroy

    def self.search(search)
        if search
          Product.where(['p_name LIKE ?', "%#{search}%"])
        else
          Product.all
        end
    end
end