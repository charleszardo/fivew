class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end
  
  def new
  end
  
  def create
    @game = Game.new(params[:game])
 
    @game.save
    redirect_to new_who_path(:game => @game.id)
  end
  
  def index
  end
  
  private
  def game_params
    params.require(:game).permit()
  end
end
