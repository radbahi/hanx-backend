class Cart < ApplicationRecord
    belongs_to :user
    has_many :carts_items
    has_many :items, through: :carts_items
end
