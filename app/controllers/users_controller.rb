class UsersController < ApplicationController
    def index
    end

    def show
    user = User.find_by(id: params[:id])
    render json: User
    end

    # def new
    # end

    # def edit
    # end

    # def update
    # end

    # def delete 
    # end
end