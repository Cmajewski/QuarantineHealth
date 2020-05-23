class WorkoutsController < ApplicationController


    def new 
        @workout=Workout.new
    end 

    def create 
        @workout=Workout.new(workout_params)
        if @workout.save
            redirect_to workout_path(@workout)
        else
            render :new 
        end
    end 

    def index 
        if params[:instructor_id]
            @workouts=Instructor.find(params[:instructor_id]).workouts 
        elsif params[:platform_id]
            @workouts=Platform.find(params[:platform_id]).workouts 
        else
        @workouts=Workout.all
        end
    end

    def show
        @workout=Workout.find(params[:id])
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
        params.require(:workout).permit(:name,:description,:time,:instructor_id, :platform_id)
    end
end
