class CreateFantasyLeagues < ActiveRecord::Migration
  def change
    create_table :fantasy_leagues do |t|
      t.string :name
    end
  end
end
