class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    def index 
      render json: User.all, status: 200
    end

    def show
      user = User.find(session[:user_id])
      render json: user, status: 200
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
    end
    
end