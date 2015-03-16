class Admin::TwitterController < ApplicationController
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

      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = Settings.twitter.consumer_key
        config.consumer_secret     = Settings.twitter.consumer_secret
        config.access_token        = bot.access_token
        config.access_token_secret = bot.access_secret
      end
      client.update(params[:content])
    end
end
