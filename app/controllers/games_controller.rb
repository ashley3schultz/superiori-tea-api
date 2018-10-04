class GamesController < ApplicationController

    def index
        render json: Game.all
    end

    def create
        render json: Game.create(game_params)
    end

    def update 
        @game = Game.find(params[:id])
        @game.likes += 1
        @game.save
        render json: @game
    end 

    private 

    def game_params
        params.require(:game).permit(:user, :score, :likes)
    end 
end

# rails s -p 3001
