class CharactersController
    def index
        characters = Character.all 
        render json: characters
    end

    def show
        character = Character.find_by(id: params[:id])
        render json: character
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