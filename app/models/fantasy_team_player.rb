class FantasyTeamPlayer < ActiveRecord::Base
  belongs_to :fantasy_team
  belongs_to :football_player
end