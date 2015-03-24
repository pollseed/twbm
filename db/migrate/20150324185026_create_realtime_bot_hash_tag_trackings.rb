class CreateRealtimeBotHashTagTrackings < ActiveRecord::Migration
  def change
    create_table :realtime_bot_hash_tag_trackings do |t|
      t.integer :bot_type
      t.text :content
      t.boolean :deleted
      t.references :bot_hash_tag_rels, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
