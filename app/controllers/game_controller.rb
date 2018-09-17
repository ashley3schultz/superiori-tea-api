class GameController < ApplicationController

  def index
    @game = Game.order('score desc').first
    render json: @game
  end

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  private

    def game_params
      params.reuire(:game).permit(:user, :score)
    end

end
