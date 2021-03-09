class CharactersController < ApplicationController
    def index
        characters = Character.all 
        render json: characters
    end

    def show
        character = Character.find_by(params[:id])
        render json: character
    end

    def new
        character = Character.new(character_params)
        render json: character
    end

    def create 
        character = Character.create(character_params)
        render json: character
    end

    def edit
        character = Character.find(params[:id])
    end

    def update
        character = Character.find(params[:id])
        character.update
        render json: character    
    end

    def delete 
        character = Character.find(params[:id])
        character.delete
        render json: character
    end

private
    def character_params
       params.require(:character).permit(:name, :image, :history, :level, :user_id, :achievement_id, :stat_id, race_id, dndclass_id)
    end

end