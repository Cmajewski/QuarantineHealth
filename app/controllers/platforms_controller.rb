class PlatformsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @platform=Platform.new
    end 

    def create 
        @platform=Platform.new(platform_params)
        if @platform.save
            redirect_to platforms_path
        else
            render :new 
        end
    end 

    def index 
        @platforms=Platform.all
    end

    private

    def platform_params 
        params.require(:platform).permit!
    end
    
end
