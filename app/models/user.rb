class User < ApplicationRecord
    validates :name, presence: true, length:{maximum:15}
    VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,format:{with:VALID_EMAIL_REGEX}
    validates :password, length:{in: 8..32}
    validates :password, format:{with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{8,100}+\z/}
   
    has_secure_password
    
    has_many :topics
    has_many :favorites
    has_many :favorite_topics, through: favorites, source: 'topic'
end
