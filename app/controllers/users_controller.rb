class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end


    def show
        if (user = User.find_by(name: params[:name]))
            render json: user
        else
            render json: {message: "User not found"}
        end
    end

    def create
        newUser = User.create(name: params[:name])
        newCart = Cart.create(user_id: newUser.id)
        newUser.cart = newCart
        render json: newUser
    end
    
end
