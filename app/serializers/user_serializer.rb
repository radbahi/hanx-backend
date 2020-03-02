class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :cart
  has_many :items, through: :carts
end
