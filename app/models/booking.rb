class Booking < ApplicationRecord
    belongs_to :klass
    belongs_to :user
end
