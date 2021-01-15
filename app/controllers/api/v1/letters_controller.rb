class Api::V1::LettersController < ApplicationController
    belongs_to :user
    belongs_to :thought
end
