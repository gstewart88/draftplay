class AddAasmStateToFantasyTeams < ActiveRecord::Migration
  def change
    add_column  :fantasy_teams, :aasm_state, :string
  end
end
