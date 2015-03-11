class Bot < ActiveRecord::Base
  belongs_to :hash_tag

  validates :twitter_name, presence: true
  validates :twitter_id, presence: true
  validates :access_token, presence: true
  validates :hash_tags, presence: true

  # 論理削除されていないレコードを全取得
  def self.find_by
    Bot.where(:deleted => false)
  end

  def self.find_by_id(id)
    Bot.where(:id => id).first
  end

end
