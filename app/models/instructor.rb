class Instructor < ApplicationRecord
    has_many :workouts
    has_many :instructors, through: :workouts
    validates :name, uniqueness: {scope: [:location, :bio]}
    validates :location, presence: true


    def current_user
        User.find(session[:user_id])
    end
end
