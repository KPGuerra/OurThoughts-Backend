class User < ApplicationRecord
    has_many :thoughts, dependent: :destroy
    has_many :letters, dependent: :destroy
    
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}
end
