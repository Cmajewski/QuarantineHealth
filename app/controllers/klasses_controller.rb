class KlassesController < ApplicationController
    def index 
        @klasses=Klass.all
    end

    def new 
        @klass=Klass.new
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

    def klass_params
    end
end
