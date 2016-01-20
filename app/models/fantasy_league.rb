class FantasyLeague < ActiveRecord::Base
  has_many :fantasy_teams
  include AASM

  aasm do
    state :forming, :initial => true
  end
end