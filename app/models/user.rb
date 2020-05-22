class User < ApplicationRecord
    has_secure_password
    has_many :bookings
    has_many :workouts, through: :bookings
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: {scope: :name}
    validates :password, length: { minimum: 8 }
    validates :password, confirmation: { case_sensitive: true }
end
