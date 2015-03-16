class AddColumnPinToBots < ActiveRecord::Migration
  def change
    add_column :bots, :pin, :integer
  end
end
