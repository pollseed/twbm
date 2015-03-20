class Admin::Twitter::FollowController < ApplicationController
  def create
    follow_twitter_client(follow_params)
    redirect_to admin_bot_index_path
  end

  private
    def follow_params
      params.require(:follow).permit :bot_id, :word
    end

    def follow_twitter_client(params)
      bot = Bot.find_by_id(params[:bot_id])

      client = Twitter::REST::Client.new(
        consumer_key:        Settings.twitter.consumer_key,
        consumer_secret:     Settings.twitter.consumer_secret,
        access_token:        bot.access_token,
        access_token_secret: bot.access_secret,
      )

      count = 0

      client.search(params[:word], :result_type => "recent", :lang => "ja").take(10).each do |tweet|
        client.follow(tweet.user.id)
      end
    end
end
