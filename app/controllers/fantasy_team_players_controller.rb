class FantasyTeamPlayersController < ApplicationController
  before_action :authenticate_user!

  before_action :set_fantasy_team_player, only: [:show, :edit, :update, :destroy]

  def index
    @fantasy_team_players = FantasyTeamPlayer.all
  end

  def new
    @fantasy_team_player = FantasyTeamPlayer.new
  end

  def create
    FantasyTeamPlayer.create(fantasy_team_player_params) 
    redirect_to(fantasy_team_players_path)
  end

  def show
  end

  def destroy
    @fantasy_team_player.destroy
    redirect_to(fantasy_team_players_path)
  end

  def edit
  end

  def update
    @fantasy_team_player.update(fantasy_team_player_params) 
    redirect_to(fantasy_team_players_path)
  end


  private

  def set_fantasy_team_player
    @fantasy_team_player = FantasyTeamPlayer.find(params[:id])
  end

  def fantasy_team_player_params
    params.require(:fantasy_team_player).permit(:football_player_id, :fantasy_team_id)
  end
end