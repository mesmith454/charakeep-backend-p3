class UsersController < ApplicationController
    def index
        users = Users.all 
        render json: users
    end

    def show
        user = User.find_by(params[:id])
        render json: user
    end

    def new
        user = User.new
        render json: user
    end

    def create 
        user = User.create
        render json: user
    end

    def edit
        user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update
        render json: user    
    end

    def delete 
        user = User.find(params[:id])
        user.delete
        render json: index
    end
end