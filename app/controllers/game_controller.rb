class GameController < ApplicationController

  def index
    @game = Game.order('score desc').first
    render json: @game
  end

  def create
    user = User.find_or_create_by(user: params[:user])
    @game = Game.create(user_id: user.id, score: params[:score])
    render json: @game
  end

end
