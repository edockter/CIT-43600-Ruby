class AddEventIdMeetingIdToMeeting < ActiveRecord::Migration
  def change
    add_column :meetings, :event_id, :integer
    add_column :meetings, :location_id, :integer
  end
end
