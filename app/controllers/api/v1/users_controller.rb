class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        @users = User.all.includes(:thoughts)
        render json: @users
    end 

    def show
        @user = User.find(params[:id])
        render json: @user
    end 

    def profile
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end 

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: {user: UserSerializer.new(@user) }, status :created
        else 
            render json: { error: 'Failed to create new account' }, status: :not_acceptable
        end
    end 

    def update 
        @user. User.find(params[:id])
        if (@user.update!(user_params))
            render json: @user
        else 
            render json: {errors: @user.errors}
        end 
    end 

    def destroy
        @all_users = User.all
        @user = user.find(params[:id])
        @user.destroy
        render json: @all_users
    end 

    private 
    def user_params
        params.require(:user).permit(:username, :password, :email, :name, :pronouns, :bio, :avatar)
    end 

end