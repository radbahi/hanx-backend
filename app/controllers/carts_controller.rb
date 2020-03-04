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

end
