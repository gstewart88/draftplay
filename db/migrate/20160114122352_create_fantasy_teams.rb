class CreateFantasyTeams < ActiveRecord::Migration
  def change
    create_table :fantasy_teams do |t|
      t.string :name
      t.integer :fantasy_league_id
      t.integer :user_id
    end
  end
end
