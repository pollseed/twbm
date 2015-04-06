module TwitterConcern
  # Twitter clientを生成する.
  #  Param::  Bot model
  #  Return:: Twitter Client
  def create_client(bot)
    client = Twitter::REST::Client.new(
      consumer_key:        Settings.twitter.consumer_key,
      consumer_secret:     Settings.twitter.consumer_secret,
      access_token:        bot.access_token,
      access_token_secret: bot.access_secret,
    )
  end

  def save_tracking(bot_type, content, bot_id = nil, hash_tag_id = nil)
    rel = BotHashTagRel.find_by_bot_id_hash_id(bot_id, hash_tag_id)
    rels_id = rel.nil? ? nil : rel.id
    tracking_params = {
      bot_type: bot_type,
      content: content,
      bot_hash_tag_rels_id: rels_id
    }

    tracking = RealtimeBotHashTagTracking.new(tracking_params)
    tracking.save
  end
end
