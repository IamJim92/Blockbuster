class GamesController < ApplicationController
  before_action :authenticate_user!, :set_games, only: %i[show create destroy]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    # have to specify the user who is creating the game
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  # def update
  # end

  # def destroy
  #   @game.destroy
  # end

  private

  def set_games
    @games = Game.find(params[:id])
  end

  def game_params
    params.require(:games).permit(:name, :genre, :description, :price)
  end
end
