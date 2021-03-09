class AchievementsController < ApplicationController
    def index
        achievements = Achievements.all 
        render json: achievements

    def show
        achievement = Achievement.find_by(id: params[:id])
        render json: achievement
    end
    
    def new
        achievement = Achievement.new(character_params)
        render json: achievement
    end

    def create 
        achievement = Achievement.create(achievement_params)
        render json: achievement
    end

    private
        def achievement_params
            params.require(:achievement).permit(:description)
        end

end