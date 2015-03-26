class Admin::Twitter::TweetController < ApplicationController
  def create
    update_twitter_client(tweet_params)
    redirect_to admin_bot_index_path
  end

  private
    def tweet_params
      params.require(:tweet).permit :bot_id, :content
    end

    def update_twitter_client(params)
      bot = Bot.find_by_id(params[:bot_id])

      client = Twitter::REST::Client.new(
        consumer_key:        Settings.twitter.consumer_key,
        consumer_secret:     Settings.twitter.consumer_secret,
        access_token:        bot.access_token,
        access_token_secret: bot.access_secret,
      )

      client.update(params[:content])

      tracking_params = {
        bot_type: Models::BotType::TWEET,
        content: params[:content]
      }

      tracking = RealtimeBotHashTagTracking.new(tracking_params)

      tracking.save
    end
end
