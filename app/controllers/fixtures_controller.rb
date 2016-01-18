class FixturesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_fixture, only: [:show, :edit, :update, :destroy]
  
  def index
    @fixtures = Fixture.all
  end

  def new
    @fixture = Fixture.new
  end

  def create
    Fixture.create(fixture_params) 
    redirect_to(fixtures_path)
  end

  def show
  end

  def destroy
    @fixture.destroy
    redirect_to(fixtures_path)
  end

  def edit
  end

  def update
    @fixture.update(fixture_params) 
    redirect_to(fixtures_path)
  end


  private

  def set_fixture
    @fixture = Fixture.find(params[:id])
  end

  def fixture_params
    params.require(:fixture).permit(:result, :home_team_id, :away_team_id)
  end
end