class AddDefaultValueToHashTags < ActiveRecord::Migration
  def change
    change_column :hash_tags, :deleted, :boolean, :default => false
  end
end
