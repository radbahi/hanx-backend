class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image
  has_and_belongs_to_many :carts, class_name: "Cart"
  has_many :users, through: :carts
end