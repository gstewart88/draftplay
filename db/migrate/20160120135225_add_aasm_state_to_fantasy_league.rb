class AddAasmStateToFantasyLeague < ActiveRecord::Migration
  def change
    add_column  :fantasy_leagues, :aasm_state, :string
  end
end
