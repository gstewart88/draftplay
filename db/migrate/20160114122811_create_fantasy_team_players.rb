class CreateFantasyTeamPlayers < ActiveRecord::Migration
  def change
    create_table :fantasy_team_players do |t|
      t.boolean :active
      t.boolean :first_team
      t.integer :football_player_id
      t.integer :fantasy_team_id
    end
  end
end
