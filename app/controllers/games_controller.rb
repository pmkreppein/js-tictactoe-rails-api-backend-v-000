class GamesController < ApplicationController
def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game 
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end

  def index
    @games = Game.all 
    render json: @games
  end

  private

  def game_params
    params.permit(:id, state: [])
  end
end
