class Genre < ApplicationRecord
    has_one :product, dependent: :destroy
end
