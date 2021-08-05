class Customer::GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(params[:id])
  end

  def new
    @game = Game.new
  end
  
  def create
    @game         = Game.new(games_params)
    @game.user_id = current_user.id
    @game.save
    redirect_to customer_games_path
  end
  
  def destroy
  end
  
end
