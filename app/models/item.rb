class Item < ApplicationRecord
    has_and_belongs_to_many :carts
    has_many :users, through: :carts
end
