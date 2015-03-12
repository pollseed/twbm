class CreateHashTags < ActiveRecord::Migration
  def change
    create_table :hash_tags do |t|
      t.string :hash_tag
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
