class CartSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  has_and_belongs_to_many :items
end
