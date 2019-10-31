class Card < ApplicationRecord
  belongs_to :holder ,class_name: 'User' ,foreign_key:'user_id' 
end
