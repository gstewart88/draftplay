class FantasyLeaguesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_fantasy_league, only: [:show, :edit, :update, :destroy, :draft]
  
  def draft
    @fantasy_league.draft!
    redirect_to(@fantasy_league)
  end

  def index
    @fantasy_leagues = FantasyLeague.all
  end

  def new
    @fantasy_league = FantasyLeague.new
  end

  def create
    FantasyLeague.create(fantasy_league_params) 
    redirect_to(fantasy_leagues_path)
  end

  def show
  end

  def destroy
    @fantasy_league.destroy
    redirect_to(fantasy_leagues_path)
  end

  def edit
  end

  def update
    @fantasy_league.update(fantasy_league_params) 
    redirect_to(fantasy_leagues_path)
  end


  private

  def set_fantasy_league
    @fantasy_league = FantasyLeague.find(params[:id])
  end

  def fantasy_league_params
    params.require(:fantasy_league).permit(:name)
  end
end