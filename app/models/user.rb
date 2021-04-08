class User < ApplicationRecord
    validates :name, presence: true, length:{muxmum:15}
    VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,format:{with:VALID_EMAIL_REGEX}
    validate :password, length:{in: 8..32}
    validate :password, format:{with: /\A(?=.&#042;?[a-z])(?=.&#042;?\d)[a-z\d]+\z/i }
    validate :password, 

    
    
    has_secure_password
end
