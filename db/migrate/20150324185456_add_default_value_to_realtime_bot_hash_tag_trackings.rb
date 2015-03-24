class AddDefaultValueToRealtimeBotHashTagTrackings < ActiveRecord::Migration
  def change
    change_column :realtime_bot_hash_tag_trackings, :deleted, :boolean, :default => false
  end
end
