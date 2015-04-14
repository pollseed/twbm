class RemoveIndexToRealtimeBotHashTagTrackings < ActiveRecord::Migration
  def change
    remove_column :realtime_bot_hash_tag_trackings, :bot_hash_tag_rels_id
    add_column :realtime_bot_hash_tag_trackings, :bot_id, :integer
  end
end
