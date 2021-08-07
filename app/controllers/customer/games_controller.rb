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
    if @game.save
      redirect_to customer_games_path
    else
      redirect_to new_customer_game_path
    end
  end
  
  def destroy
  end
  
end
