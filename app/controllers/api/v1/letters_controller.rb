class Api::V1::LettersController < ApplicationController
    skip_before_action :authorized
    
    def index
        letters = Letter.all
        render json: letters
    end 

    def show
        @letter = Letter.find(params[:id])
        render json: @letter
    end 

    def create
        @letter = Letter.create!(letter_params)

        if @letter.valid?
            render json: @letter
        else 
            render json: { error: 'Failed to post letter' }, status: :not_acceptable
        end
    end 

    def destroy
        @letter = Letter.find(params[:id])
        @letter.destroy!
        render json: {}
    end 

    private 
    def letter_params
        params.require(:letter).permit(:user_id, :thought_id, :content, :like)
    end
end

