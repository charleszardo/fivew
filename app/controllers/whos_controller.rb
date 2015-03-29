class WhosController < ApplicationController
  def show
    @who = Who.find(params[:id])
  end
  
  def new
  end
  
  def create
    @who = Who.new(who_params)
    
    @who.save
    redirect_to @who
  end
  
  private
  def who_params
    params.require(:who).permit(:email, :text)
  end
end
