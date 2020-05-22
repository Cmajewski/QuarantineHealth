class Platform < ApplicationRecord
    has_many :workouts 
    has_many :instructors, through: :workouts 
    validates :name, uniqueness: true
end
