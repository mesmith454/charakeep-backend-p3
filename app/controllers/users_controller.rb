class UsersController < ApplicationController
    def index
        users = Users.all 
        render json: users
    end

    def show
        user = find_user
        render json: user
    end

    def new
        user = User.new(user_params)
        render json: user
    end

    def create 
        user = User.create(user_params)
        render json: user
    end

    def edit
        user = find_user
        render json: user
    end

    def update
        user = find_user
        user.update
        render json: user    
    end

    def delete 
        user = find_user
        user.delete
        render json: index
    end

    private
        def user_params
            params.require(:user).permit(:agility, :charisma, :dexterity, :intelligence, :strength, :wisdom)
        end
        
        def find_user 
            user = User.find(id: params[:id])
        end
end