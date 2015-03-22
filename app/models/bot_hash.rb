class BotHash < ActiveRecord::Base
  belongs_to :bot
  belongs_to :hash_tag
end
