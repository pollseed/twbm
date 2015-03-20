class CreateBotHashes < ActiveRecord::Migration
  def change
    create_table :bot_hashes do |t|
      t.integer :bot_id
      t.integer :seq
      t.integer :hash_id

      t.timestamps null: false
    end
  end
end
