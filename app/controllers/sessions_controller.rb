class SessionsController < ApplicationController

  def create
    @player = Player.find_by(email: params[:email]).try(:authenticate, params[:password])  
    if @player
      session[:id] = @player.id
      redirect_to root_path
    else
      # @error = "Please enter correct username/password"
      # render action: 'player#show'
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end