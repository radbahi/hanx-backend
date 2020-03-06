class CartsController < ApplicationController

    def show
        cart = Cart.find_by(id: params[:id])
        render json: cart 
    end

    # def update
    #     # byebug
    #     cart = Cart.find_by(id: params[:id])
    #     cart.update(params(:items))
    #     render json: cart
    # end

    def destroy
        cartItems = CartsItem.where(cart_id: params[:id])
        cartItems.destroy_all
        cart = Cart.find_by(id: params[:id])
        user = User.find_by(id: cart.user_id)
        render json: user
    end

end
