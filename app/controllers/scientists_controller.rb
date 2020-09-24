class ScientistsController < ApplicationController

    before_action :find_scientist, only: [:show, :destroy, :edit, :update]
    
    def index
        @scientists = Scientist.all
    end

    def show
    end

    def destroy 
        @scientist.destroy
        redirect_to(scientists_path)
    end

    def edit
    end

    def update
        @scientist.update(strong_params)
        if @scientist.save
            redirect_to(scientist_path(@scientist))
        else
            flash[:my_errors] = @scientist.errors.full_messages
            render :edit
        end
    end
    
    def new
        @scientist = Scientist.new
    end

    def create
        @scientist = Scientist.create(strong_params)
        if @scientist.valid?
            redirect_to :show
        else
            flash[:my_errors] = @scientist.errors.full_messages
            render :new
        end
    end
    
    def homepage
    end

    def about
    end

    private 
    def find_scientist
        @scientist = Scientist.find(params[:id])
    end

    def strong_params
        params.require(:scientist).permit(:name, :field_of_study, :planet_ids)
    end

end
