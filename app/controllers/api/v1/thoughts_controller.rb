class Api::V1::ThoughtsController < ApplicationController
    belongs_to :user
    has_many :letters
end
