class SessionsController< ApplicationController
    before_action :redirect_if_not_logged_in, only: [:destroy]

    def welcome 
    end
   
    def new 
    end

    def create
        if auth
            user=User.find_or_create_by_omniauth(auth)
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            user = User.find_by(name: params[:user][:name])
            if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
             else
            flash[:message]="Login is incorrect"
            redirect_to "/login"
            end 
        end
    end


    def destroy
        session.delete :user_id
        redirect_to "/" 
    end

    private
    def auth
        request.env["omniauth.auth"]
    end
end
