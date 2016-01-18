class FantasyTeamsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_fantasy_team, only: [:show, :edit, :update, :destroy]
  
  def index
    @fantasy_teams = FantasyTeam.all
  end

  def new
    @fantasy_team = FantasyTeam.new
  end

  def create
    FantasyTeam.create(fantasy_team_params) 
    redirect_to(fantasy_teams_path)
  end

  def show
  end

  def destroy
    @fantasy_team.destroy
    redirect_to(fantasy_teams_path)
  end

  def edit
  end

  def update
    @fantasy_team.update(fantasy_team_params) 
    redirect_to(fantasy_teams_path)
  end


  private

  def set_fantasy_team
    @fantasy_team = FantasyTeam.find(params[:id])
  end

  def fantasy_team_params
    params.require(:fantasy_team).permit(:name, :fantasy_league_id, :user_id)
  end
end