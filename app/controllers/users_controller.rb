class UsersController < ApplicationController
    def new 
        @user=User.new
    end 

    def create
    @user=User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else 
            render :new
        end
    end

    def show
        @instructor=Instructor.find(Params[:id])
        redirect_to instructor_klasses_path(@instructor)
    end

    private 
    def user_params 
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
