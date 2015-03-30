class WhosController < ApplicationController
  def show
    @who = Who.find(params[:id])
  end
  
  def new
    @who = Who.new
    @game = params[:game_id]
  end
  
  def create
    @who = Who.new(who_params)
    @who.save
    redirect_to @who
  end
  
  def get_game
    Game.where(:id => params["game_id"])
  end
  
  private
  def who_params
    params.require(:who).permit(:email, :text, :game_id)
  end
end
