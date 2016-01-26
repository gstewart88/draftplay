class FootballPlayer < ActiveRecord::Base
  has_many :fantasy_team_players

  scope :random, -> { order('RANDOM()') }
  scope :goalkeepers, -> { where(position: "Goalkeeper") }
  scope :defenders, -> { where(position: "Defender") }
  scope :attackers, -> { where(position: "Attacker") }
  scope :not_in_league, -> (fantasy_league) { where.not(id: fantasy_league.football_player_ids ) } # TODO: change to use joins rather than nested ids 
end