class CartsItemsController < ApplicationController

    def index
        cartsItems = CartsItem.all
        render json: cartsItems
    end

    def create
        cartItem = CartsItem.create(item_id: params[:item_id], cart_id: params[:cart_id])
        cart = Cart.find_by(id: cartItem.cart_id)
        user = User.find_by(id: cart.user_id)
        render json: user
    end

    def show
        cartItem = CartsItem.find_by(id: params[:id])
        render json: cartItem
    end

end
