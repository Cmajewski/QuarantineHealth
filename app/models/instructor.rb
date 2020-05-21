class Instructor < ApplicationRecord
    has_many :klasses
    has_many :instructors, through: :klasses
    validates :name, presence: true
    validates :name, uniqueness: {scope: [:location, :bio]}
    validates :location, presence: true

ß
end
