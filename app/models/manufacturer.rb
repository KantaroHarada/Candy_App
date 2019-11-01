class Manufacturer < ApplicationRecord
    has_one :product, dependent: :destroy
end
