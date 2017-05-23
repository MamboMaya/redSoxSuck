class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def new
    @team = Team.find(params[:team_id])
    @player = @team.players.new
  end


  private
  def player_params
    params.require(:player).permit(:name)
  end



end
