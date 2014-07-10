class PlayersController < ApplicationController

	def show
		@player ||= Player.find_by(id: session[:id])
	end

	def new
	  @player = Player.new
	end

	def create
	  @player = Player.new(player_params)
		if @player.save
      session[:id] = @player.id
      redirect_to root_path
	  else
	    render action: 'new'
	  end
	end


  private

  def player_params
    params.require(:player).permit(:email, :password, :password_confirmation)
  end
end