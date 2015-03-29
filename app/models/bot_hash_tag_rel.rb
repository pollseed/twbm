class BotHashTagRel < ActiveRecord::Base
  belongs_to :bot
  belongs_to :hash_tag

  # 論理削除されていないレコードを全取得
  def self.find_by
    BotHashTagRel.where(deleted: false)
  end
end
