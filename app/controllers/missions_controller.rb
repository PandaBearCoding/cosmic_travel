class MissionsController < ApplicationController

    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.create(strong_params)
        if @mission.valid?
            redirect_to scientist_path(@mission.scientist_id)
        else
            flash[:my_errors] = @mission.errors.full_messages
            render :new
        end
    end

    private 

    def strong_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end
end
