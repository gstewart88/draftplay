class Fixture < ActiveRecord::Base
  belongs_to :home_team, class_name: "FantasyTeam"
  belongs_to :away_team, class_name: "FantasyTeam"
end