class RacesController < ApplicationController
    def index
        races = Races.all 
        render json: races
    end

    def show
        race = Race.find_by(params[:id])
        render json: race
    end
end