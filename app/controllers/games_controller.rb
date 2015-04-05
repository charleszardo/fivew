class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end
  
  def new
  end
  
  def create
    @game = Game.new(game_params)
    
    respond_to do |format|
      if @game.save
        format.html { redirect_to new_who_path(:game_id => @game.id) }
        format.json { render action: 'show', status: :created, location: @game }
      else
        format.html { render action: 'new' }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def index
  end
  
  private
  def game_params
    params.require(:game).permit()
  end
end
