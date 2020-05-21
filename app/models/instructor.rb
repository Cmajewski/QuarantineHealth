class Instructor < ApplicationRecord
    has_many :klasses
    has_many :instructors, through: :klasses
end
