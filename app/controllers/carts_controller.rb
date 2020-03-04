class CartsController < ApplicationController

    def show
        cart = Cart.find_by(id: params[:id])
        render json: cart 
    end

end
