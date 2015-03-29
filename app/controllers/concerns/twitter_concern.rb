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

  def save_tracking(bot_type, content)
    tracking_params = {
      bot_type: bot_type,
      content: content
      #bot_hash_tag_rels_id: "ハッシュと紐付け後登録"
    }

    tracking = RealtimeBotHashTagTracking.new(tracking_params)
    tracking.save
  end
end
