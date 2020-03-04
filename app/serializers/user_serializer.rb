class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :cart
  has_many :carts_items, through: :cart
  has_many :items, through: :carts_items
end
