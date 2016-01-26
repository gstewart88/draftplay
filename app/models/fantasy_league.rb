class FantasyLeague < ActiveRecord::Base
  has_many :fantasy_teams
  include AASM

  aasm do
    state :forming, :initial => true
    state :drafting, :before_enter => :draft!
    state :playing

    event :draft do
      transitions :from => :forming, :to => :drafting
    end

    event :play do
      transitions :from => :drafting, :to => :playing
    end


  end

  def football_player_ids
    fantasy_teams.flat_map do |fantasy_team|
      fantasy_team.football_player_ids
    end
  end

  def draft!
      
    # goalies
    allocate_players(2, :goalkeepers)

    # defenders
    allocate_players(4, :defenders)

    # attackers
    allocate_players(4, :attackers)
    

    # (1..(FantasyTeam.where(fantasy_league_id: params[:id]).count)).each do |i|
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Defender").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Defender").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Defender").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Defender").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Attacker").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Attacker").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Attacker").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Attacker").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Goalkeeper").sample , fantasy_team_id: i )
    #   FantasyTeamPlayer.new(football_player_id: FootballPlayer.where(position: "Goalkeeper").sample , fantasy_team_id: i )
    # end
  end

  private
  def allocate_players(amount_of_players, position)
    amount_of_players.times do
      fantasy_teams.random.each do |fantasy_team|
        # take teams one at a time, and allocate two goalies
        fantasy_team.fantasy_team_players.create! football_player: FootballPlayer.send(position).not_in_league(self).random.first
      end
    end
  end


end


# for each team
# sample 4 players from the defenders array and assign them to team[i]
# sample 4 players from the midfielders array and assign them to team[i]
# sample 2 players from the attackers array and assign them to team[i]
# increment i
# make sure these players are removed from the list of available players

# find the football players that are not present in fantasy team players

