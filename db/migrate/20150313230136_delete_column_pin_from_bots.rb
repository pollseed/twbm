class DeleteColumnPinFromBots < ActiveRecord::Migration
  def change
    remove_column :bots, :pin
  end
end
