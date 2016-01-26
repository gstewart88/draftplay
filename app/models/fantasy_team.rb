class FantasyTeam < ActiveRecord::Base
  has_many :fantasy_team_players
  has_many  :football_players, :through => :fantasy_team_players
  belongs_to :fantasy_league
  belongs_to :user
  has_many :fixtures_as_home_team, class_name: 'fixture', foreign_key: :home_team_id
  has_many :fixtures_as_away_team, class_name: 'fixture', foreign_key: :away_team_id

  scope :random, -> { order('RANDOM()') }

  include AASM
end