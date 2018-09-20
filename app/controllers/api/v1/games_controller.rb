module Api::V1
    class GamesController < ApplicationController

        def index
            render json: Game.all
        end

        def create
            render json: Game.create(game_params)
        end

        private 

        def game_params
            params.require(:game).permit(:user, :score)
        end 
    end
end

# rails s -p 3001
