class DndclassesController < ApplicationController
    def index
        dndclass = Dndclasses.all 
        render json: dndclass
    end

    def show
        dndclass = Dndclass.find_by(id: params[:id])
        render json: dndclass
    end
end