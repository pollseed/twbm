class AddColumnToBots < ActiveRecord::Migration
  def change
    add_column :bots, :pin, :integer
  end
end
