class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image
  has_many :carts_items
  has_many :carts, through: :carts_items
end
