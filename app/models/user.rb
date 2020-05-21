class User < ApplicationRecord
    has_many :bookings
    has_many :klasses, through: :bookings
    has_secure_password
end
