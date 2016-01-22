class FantasyTeamsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_fantasy_team, only: [:show, :edit, :update, :destroy]
  before_action :set_fantasy_league
  
  def index
    @fantasy_teams = FantasyTeam.all
  end

  def new
    @fantasy_team = @fantasy_league.fantasy_teams.new
  end

  def create
    @fantasy_team = @fantasy_league.fantasy_teams.new(fantasy_team_params) 
    @fantasy_team.save!
    redirect_to(@fantasy_league)
  end

  def show
  end

  def destroy
    @fantasy_team.destroy
    redirect_to(fantasy_league_fantasy_teams_path)
  end

  def edit
  end

  def update
    @fantasy_team.update(fantasy_team_params) 
    redirect_to(fantasy_league_fantasy_teams_path)
  end


  private

  def set_fantasy_team
    @fantasy_team = FantasyTeam.find(params[:id])
  end

  def set_fantasy_league
    @fantasy_league = FantasyLeague.find(params[:fantasy_league_id])
  end

  def fantasy_team_params
    params.require(:fantasy_team).permit(:name, :user_id)
  end
end