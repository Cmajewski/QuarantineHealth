class InstructorsController < ApplicationController

    def index 
        @instructors=Instructor.all
    end

    def new 
        @instructor=Instructor.new
    end 

    def create 
    end 

    def edit
    end

    def update 
    end 

    def delete 
    end

    private 

    def instructor_params 
        params.require(:instructor).permit!
    end
end
