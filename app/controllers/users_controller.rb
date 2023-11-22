class UsersController < ApplicationController  

    def index 
        render json: User.all   
    end

    def show 
        render json: User.find(params[:id]) 
    end 

    def create
        user = User.new(params.require(:user).permit(:name, :email))

        # user.save!
        # render json: user
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end

    end

    def update  
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_url(@user)
        else 
            render json: @user.errors.full_messages, status: 422 
    end 

    def user_params 
        params.require(:user).permit(:name, :email)
    end

end