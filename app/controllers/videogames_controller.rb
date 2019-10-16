class VideogamesController < ApplicationController
    before_action :find_videogame, only: [:show, :update, :edit, :destroy]

    def index
        @videogames = Videogame.all
    end

    def show
    end

    def new
        @videogame = Videogame.new
    end

    def create
        @videogame = Videogame.create(game_params)

        redirect_to videogame_path(@videogame)
    end

    def edit
    end

    def update
        @videogame.update(game_params)
        
        redirect_to videogame_path(@videogame)
    end

    def destroy
        @videogame.destroy

        redirect_to videogames_path
    end
    
    private
    def game_params
        params.require(:videogame).permit(:title, :erb_rating)
    end

    def find_videogame
        @videogame = Videogame.find(params[:id])
    end

end
