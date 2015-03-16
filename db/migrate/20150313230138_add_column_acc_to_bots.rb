class AddColumnAccToBots < ActiveRecord::Migration
  def change
    add_column :bots, :acc_key, :integer
    add_column :bots, :acc_sec, :integer
  end
end
