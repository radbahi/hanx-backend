class CartsItemSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :cart_id
  belongs_to :cart 
  belongs_to :item 
end
