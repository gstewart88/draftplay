class FootballPlayersController < ApplicationController
  before_action :authenticate_user!

  before_action :set_football_player, only: [:show, :edit, :update, :destroy]
  
  def index
    @football_players = FootballPlayers.all
  end

  def new
    @football_player = FootballPlayer.new
  end

  def create
    FootballPlayer.create(football_player_params) 
    redirect_to(football_players_path)
  end

  def show
  end

  def destroy
    @football_player.destroy
    redirect_to(football_players_path)
  end

  def edit
  end

  def update
    @football_player.update(football_player_params) 
    redirect_to(football_players_path)
  end


  private

  def set_football_player
    @football_player = FantasyPlayer.find(params[:id])
  end

  def football_player_params
    params.require(:fantasy_player).permit(:name, :club, :position)
  end
end