class StatsController < ApplicationController
    def index
        stats = Stats.all 
        render json: stats
    end

    def show
        stat = Stat.find_by(params[:id])
        render json: stat
    end
    
    def edit
        stat = Stat.find(params[:id])
    end

    def update
        stat = Stat.find(params[:id])
        stat.update
        render json: stat   
    end

end