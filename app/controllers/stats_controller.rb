class StatsController < ApplicationController
    def index
        stats = Stats.all 
        render json: stats
    end

    def show
        stat = Stat.find_by(id: params[:id])
        render json: stat
    end
    
    def edit
        stat = Stat.find(id: params[:id])
    end

    def update
        stat = Stat.find(id: params[:id])
        stat.update
        render json: stat   
    end

    def new 
        stat = Stat.new(stat_params)
    end

    def create(stat_params)
        stat = Stat.create
        render json: stat
    end 

    private

        def stat_params
            params.require(:stat).permit(:name)
        end

        def find_stat
            stat = Stat.find(id: params[:id])
        end
end