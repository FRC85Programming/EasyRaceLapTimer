class AddScheduledDatesToRaceSession < ActiveRecord::Migration
  def change
    add_column :race_sessions, :start_date, :date
    add_column :race_sessions, :end_date, :date
  end
end
