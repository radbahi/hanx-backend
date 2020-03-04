class CartsItemsController < ApplicationController

    def create
        cartItem = CartsItem.create(item_id: params[:item_id], cart_id: params[:cart_id])
    end

end
