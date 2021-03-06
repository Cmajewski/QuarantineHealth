class Workout < ApplicationRecord
    belongs_to :platform
    belongs_to :instructor
    has_many :users, through: :bookings

    def instructor_name
        self.instructor.name
    end

    def instructor_name=(name)
        self.instructor.name=name
    end
    def platform_name
        self.platform.name
    end

    def instructor_name=(name)
        self.platform.name=name
    end
    
end
