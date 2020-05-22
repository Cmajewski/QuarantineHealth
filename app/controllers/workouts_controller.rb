class WorkoutsController < ApplicationController
    def index 
        @workouts=Workout.all
    end

    def new 
        @workout=Workout.new
    end 

    def create 
        @workout=Workout.new(workout_params)
        @instructor=
        if @workout.save
            redirect_to instructor_path(@workout)
        else
            render :new 
        end
    end 

    def edit
        @workout=Workout.find(params[:id])
    end

    def update 
        @workout = Workout.find(params[:id])
        if @workout.update(workout_params)
          redirect_to instructor_path(@workout)
        else
          render :edit
        end
    end 

    def destroy
        @workout=Workout.find[params[:id]]
        @workout.destroy
        redirect_to workouts.path
    end

    private 

    def workout_params
        params.require(:workout).permit(:name,:type,:description,:instructor_id)
    end
end
