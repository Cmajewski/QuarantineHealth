module WorkoutsHelper
  
    def instructor_name=(name)
        @instructor=Instructor.find_or_create_by(name: name)
        self.instructor=@instructor
    end

    def instructor_name
        self.instructor.name 
    end

    def platform_name=(name)
        @platform=Platform.find_or_create_by(name: name)
        self.platform=@platform
    end

    def platform_name
        self.platform.name 
    end


    def platform_id_field(workout)
        if workout.platform.nil?
            select_tag "workout[platform_id]", 
            options_from_collection_for_select(Platform.all, :id, :name, include_blank:true)
        else
          hidden_field_tag "workout[instructor_id]", workout.instructor_id
        end
      end
    def instructor_id_field(workout)
        if workout.instructor.nil?
            select_tag "workout[instructor_id]", 
            options_from_collection_for_select(Instructor.all, :id, :name, include_blank:true)
        else
          hidden_field_tag "workout[instructor_id]", workout.instructor_id
        end
      end
    
end
