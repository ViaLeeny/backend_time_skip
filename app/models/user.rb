class User < ApplicationRecord
    has_many :contributions, dependent: :destroy
    has_many :events, through: :contributions

    has_secure_password 
end
