class GamesController < ApplicationController
  before_action :set_games, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @games = Game.search_by_name_and_genre(params[:query])
    else
      @games = Game.all
    end
  end

  def inventory
    @games = Game.where(user_id: current_user.id)
    render "index"
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
    if @game.save!
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @game.user = current_user
    if @game.update(game_params)
      flash[:success] = "#{@game.name} has been updated!"
      # redirect_to game_path(@game)
      redirect_to game_path(@game)
    else
      flash.now[:error] = "The game update failed, try again!"
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def set_games
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :genre, :description, :price, :photo)
  end
end
