class Thought < ApplicationRecord
    belongs_to :user
    has_many :letters
end
