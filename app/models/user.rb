class User < ApplicationRecord
    has-secure-password

    validates :name, presence: true
    validates :image, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
end
