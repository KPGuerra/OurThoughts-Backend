class User < ApplicationRecord
    has_many :thoughts
    has_many :letters
    
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}
end
