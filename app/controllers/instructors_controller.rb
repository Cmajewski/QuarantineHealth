class InstructorsController < ApplicationController

    def index 
        @instructors=Instructor.all
    end

    def new 
        @instructor=Instructor.new
    end 

    def create 
        @instructor=Instructor.new(instructor_params)
        if @instructor.save
            redirect_to instructor_path(@instructor)
        else
            render :new 
        end
    end 

    def edit
        @instructor=Instructor.find(params[:id])
    end

    def update 
        @instructor = Instructor.find(params[:id])
        if @instructor.update(instructor_params)
          redirect_to instructor_path(@instructor)
        else
          render :edit
        end
    end 

    def destroy
        @instructor.find[params[:id]]
        @instructo.destroy
        redirect_to instructors.path
    end

    private 

    def instructor_params 
        params.require(:instructor).permit!
    end
end
