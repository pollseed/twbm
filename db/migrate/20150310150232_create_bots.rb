class CreateBots < ActiveRecord::Migration
  def change
    create_table :bots do |t|
      t.string :twitter_name
      t.string :twitter_id
      t.string :access_token
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
