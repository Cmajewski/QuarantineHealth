class Klass < ApplicationRecord
    belngs_to :platform
    belongs_to :instructor
    has_many :users, through: :bookings
end
