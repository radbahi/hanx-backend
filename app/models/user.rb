class User < ApplicationRecord
    has_one :cart
    has_many :items, through: :carts
end
