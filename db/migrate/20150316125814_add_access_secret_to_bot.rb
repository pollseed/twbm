class AddAccessSecretToBot < ActiveRecord::Migration
  def change
    add_column :bots, :access_secret, :string
  end
end
