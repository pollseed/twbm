class RemovePinFromBot < ActiveRecord::Migration
  def change
    remove_column :bots, :pin, :integer
  end
end
