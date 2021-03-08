class AchievementsController < ApplicationController
    def index
        achievements = Achievements.all 
        render json: achievements
    end

    def show
        achievement = Achievement.find_by(params[:id])
        render json: achievement
    end
    
    def new
        achievement = Achievement.new
        render json: achievement
    end

    def create 
        achievement = Achievement.create
        render json: achievement
    end

end