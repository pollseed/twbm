class AddColumnToBotHashTagRels < ActiveRecord::Migration
  def change
    add_column :bot_hash_tag_rels, :deleted, :boolean, :default => false
  end
end
