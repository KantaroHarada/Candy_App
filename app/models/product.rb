class Product < ApplicationRecord
    belongs_to :stock
    belongs_to :genre
    belongs_to :manufacturer
    belongs_to :cost

    def self.search(search)
        if search
          Product.where(['title LIKE ?', "%#{search}%"])
        else
          Product.all
        end
    end
end
