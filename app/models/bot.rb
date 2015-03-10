class Bot < ActiveRecord::Base
  belongs_to :hash_tag

  validates :twitter_name, presence: true
  validates :twitter_id, presence: true
  validates :access_token, presence: true
  validates :hash_tags, presence: true

end
