class CreateFootballPlayers < ActiveRecord::Migration
  def change
    create_table :football_players do |t|
      t.string :name
      t.string :club
      t.string :position
      t.integer :fantasy_premier_league_api_id
    end
  end
end