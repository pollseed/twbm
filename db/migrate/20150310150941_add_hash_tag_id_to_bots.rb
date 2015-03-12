class AddHashTagIdToBots < ActiveRecord::Migration
  def change
    add_column :bots, :hash_tags, :integer
    change_column :bots, :deleted, :boolean, :default => false
  end
end
