class CharactersController
    def index
        characters = Character.all 
        render json: characters
    end

    def show
        character = Character.find_by(id: params[:id])
        render json: character
    end

    def new
        character = Character.new
        render json: character
    end

    def create 
        character = Character.create
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
        render json: index
    end

#private
    #def character_params
       # params.require().permit()
    #end

end