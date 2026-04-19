class AddIndexesToPilotRaceLaps < ActiveRecord::Migration
  def change
    add_index :pilot_race_laps, :race_session_id,
              name: 'idx_prl_race_session'

    add_index :pilot_race_laps, [:race_session_id, :pilot_id],
              name: 'idx_prl_session_pilot'

    add_index :pilot_race_laps, [:race_session_id, :latest, :invalidated],
              name: 'idx_prl_session_active'
  end
end
