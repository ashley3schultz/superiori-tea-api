class GamesController < ApplicationController

    def index 
        @game = Game.order('score DESC').first
        render json: @game
    end

    def create
        user = User.find_or_create_by(name: params[:name])
        @game = Game.create(score: params[:score], user_id: user.id)
        render json: @game
    end 
end


# rails s -p 3001
