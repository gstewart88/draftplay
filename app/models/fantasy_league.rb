class FantasyLeague < ActiveRecord::Base
  has_many :fantasy_teams
  include AASM

  aasm do
    state :forming, :initial => true
    state :drafting, :after_enter => :run_draft
    state :scheduling, :after_enter => :set_fixtures
    state :playing

    event :draft do
      transitions :from => :forming, :to => :drafting
    end

    event :schedule do
      transitions :from => :drafting, :to => :scheduling
    end

    event :play do
      transitions :from => :scheduling, :to => :playing
    end


  end

  def time_check
    gameweek = 0
    @time = Time.now
    @day = @time.a.strftime("%A")
    @hour = @time.hour
    if @day == "Sunday" and @hour == 23
      self.run_fixtures
      self.gameweek += 1
    end
  end

  def run_fixtures
  end

  def football_player_ids
    fantasy_teams.flat_map do |fantasy_team|
      fantasy_team.football_player_ids
    end
  end

  private
  def run_draft

    # goalies
    allocate_players(2, :goalkeepers)

    # defenders
    allocate_players(4, :defenders)

    # attackers
    allocate_players(4, :attackers)
    
    schedule!

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

  # private
  # def set_fixtures
  #   index = 1
  #   fantasy_team_ids.combination(2).to_a.each do |team1, team2|
  #     Fixture.create!(home_team_id: team1, away_team_id: team2, gameweek: index)
  #     index = index + 1
  #   end
  #   fantasy_team_ids.combination(2).to_a.each do |team1, team2|
  #     Fixture.create!(home_team_id: team2, away_team_id: team1, gameweek: (index))
  #     index = index + 1
  #   end
  #   play!
  # end



  private
  def set_fixtures
    # find combinations before taking the first and 
    # last one and making them gameweek 1, then 2 and so on
    fixture = fantasy_team_ids.combination(2).to_a
    (0..((fantasy_team_ids.combination(2).count)/2)-1).each do |i|
      week = []
      week << fixture.pop
      week << fixture.shift
      week.each do |team1, team2|
        Fixture.create!(home_team_id: team1, away_team_id: team2, gameweek: i)
      end
    end
    play!
  end

end


# for each team
# sample 4 players from the defenders array and assign them to team[i]
# sample 4 players from the midfielders array and assign them to team[i]
# sample 2 players from the attackers array and assign them to team[i]
# increment i
# make sure these players are removed from the list of available players

# find the football players that are not present in fantasy team players

