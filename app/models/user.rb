class User < ApplicationRecord
    has_many :message, dependent: :destroy
    validates :username, presence: true, uniqueness: true,
        length: { minimum: 2 }
    validates :password, presence: true, length: { minimum: 6 }
    def authenticate(user, password)
        username = user.username
        if username && user.password == password
            user
        else
            nil
        end
    end
end
