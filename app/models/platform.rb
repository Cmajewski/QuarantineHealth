class Platform < ApplicationRecord
    has_many :workouts 
    has_many :instructors, through: :workouts 
    validates :name, uniqueness: {case_sensitive: false}
    validates :name, presence: true
    validates :url, presence: true
    validates :url, uniqueness: true
    
end

