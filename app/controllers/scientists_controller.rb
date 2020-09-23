class ScientistsController < ApplicationController

    before_action :find_scientist, only: [:show] #:edit, :update, :destroy
    
    def index
        @scientists = Scientist.all
    end

    def show
    end

    def destroy 
        @scientist.destroy
    end

    private 
    def find_scientist
        @scientist = Scientist.find(params[:id])
    end 

end
