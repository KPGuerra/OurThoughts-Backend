class Api::V1::ThoughtsController < ApplicationController
    skip_before_action :authorized 

    def index
        thoughts = Thought.all
        render json: thoughts
    end 

    def show
        @thought = Thought.find(params[:id])
        render json: @thought
    end 

    def create
        @thought = Thought.create!(thought_params)

        if @thought.valid?
            render json: @thought
        else 
            render json: { error: 'Failed to post thought' }, status: :not_acceptable
        end
    end 

    def destroy
        @thought = Thought.find(params[:id])
        @thought.destroy!
        render json: {}
    end 

    private 

    def thought_params
        params.require(:thought).permit(:user_id, :title, :content, :sentiment, :emotion, :date, :tags => [])
    end
end
