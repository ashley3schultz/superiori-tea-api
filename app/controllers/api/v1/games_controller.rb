module Api::V1
    class GamesController < ApplicationController

        def index
            @games = Game.order('score DESC')
            render json: @games
        end

        def create
            user = User.find_or_create_by(name: params[:game][:name])
            @game = Game.create(score: params[:game][:score], user_id: user.id)
            render json: @game
        end
    end
end

# rails s -p 3001
