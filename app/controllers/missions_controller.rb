class MissionsController < ApplicationController
    
    def about
        @planets = Planet.all.count 
        @scientists = Scientist.all.count 
    end

    def create
        @mission = Mission.create(mission_params)
        
        if @mission.invalid?
            flash[:my_errors] = @mission.errors.messages
            redirect_to new_mission_path
        else
            redirect_to scientist_path(@mission.scientist)
        end
    end

    def new
        @mission = Mission.new
        @planets = Planet.all 
        @scientists = Scientist.all
    end


    private

    def mission_params
        params.require(:mission).permit(:name, :planet_id, :scientist_id)
    end


end

