module Api::V1
    class GamesController < ApplicationController

        def index
            game = Game.order('score DESC').first
            @game = {score: game.score, name: game.user.name}
            render json: @game
        end

        def create
            user = User.find_or_create_by(name: params[:game][:name])
            new_game = Game.create(score: params[:game][:score], user_id: user.id)
            game = Game.order('score DESC').first
            @game = {score: game.score, name: game.user.name}
            render json: @game
        end
    end
end

# rails s -p 3001
