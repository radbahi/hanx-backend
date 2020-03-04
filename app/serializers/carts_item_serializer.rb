class CartsItemSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :cart 
  belongs_to :item 
end
