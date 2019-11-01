class Cost < ApplicationRecord
    has_one :product, dependent: :destroy
end
