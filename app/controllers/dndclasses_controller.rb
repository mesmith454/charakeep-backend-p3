class DndclassesController
    def index
        dndclass = Dndclasses.all 
        render json: dndclass
    end

    def show
        dndclass = Dndclass.find_by(params[:id])
        render json: dndclass
    end
end