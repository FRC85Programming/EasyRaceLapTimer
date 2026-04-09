class ChangeScheduledDatesToDateTimesInRaceSession < ActiveRecord::Migration
  def up
    change_column :race_sessions, :start_date, :datetime
    change_column :race_sessions, :end_date, :datetime
  end

  def down
    change_column :race_sessions, :start_date, :date
    change_column :race_sessions, :end_date, :date
  end
end
