class User < ApplicationRecord
    has_secure_password
    has_many :bookings
    has_many :workouts, through: :bookings
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: {scope: :name}
    validates :password, length: { minimum: 8 }
    validates :password, confirmation: { case_sensitive: true }

    def self.find_or_create_by_omniauth (auth)
        self.where(uid: auth[:uid]).first_or_create do |user|
            user.name=auth[:info][:name]
            user.email=auth[:info][:email]
            user.password=SecureRandom.hex
        end
    end

end
