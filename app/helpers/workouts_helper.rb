module WorkoutsHelper
    def instructor_name
        self.instructor.name 
    end

    def instructor_name=(name)
        @instructor=Instructor.find_or_create_by(name: name)
        self.instructor=@instructor
    end
end
