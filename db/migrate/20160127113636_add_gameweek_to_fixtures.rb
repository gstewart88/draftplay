class AddGameweekToFixtures < ActiveRecord::Migration
  def change
    add_column :fixtures, :gameweek, :integer
  end
end
