class AddIdToPilotRaceLaps < ActiveRecord::Migration
  def change
    add_column :pilot_race_laps, :lap_id, :string
  end
end
