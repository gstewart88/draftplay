class Fixture < ActiveRecord::Base
  belongs_to :home_team, class_name: "FantasyTeam"
  belongs_to :away_team, class_name: "FantasyTeam"
end

#fantasyleague.fantasyteams[1,2,3,4].combination(2).to_a

# FantasyTeam.ids.combination(2).to_a