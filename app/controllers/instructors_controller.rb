class InstructorsController < ApplicationController
    before_action :redirect_if_not_logged_in
    skip_before_action :redirect_if_not_logged_in, only: [:new,:create]

    def index 
        @instructors=Instructor.all
    end

    def new 
        @instructor=Instructor.new(name: current_user.name)
    end 

    def create 
        @instructor=Instructor.new(instructor_params)
        if @instructor.save
            redirect_to instructor_path(@instructor)
        else
            render :new 
        end
    end 

    def show
        @instructor=Instructor.find(params[:id])
        redirect_to instructor_workouts_path(@instructor)
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
        @instructor.destroy
        redirect_to instructors.path
    end

    private 

    def instructor_params 
        params.require(:instructor).permit!
    end
end
