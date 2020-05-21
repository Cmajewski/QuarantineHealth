class Platform < ApplicationRecord
    has_many: klasses 
    has_many: instructors, through: :classes 
end
