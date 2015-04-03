class Admin::Twitter::FollowController < ApplicationController
  include TwitterConcern

  def create
    follow_twitter_client(follow_params)
    redirect_to admin_bot_index_path
  end

  private
    def follow_params
      params.require(:follow).permit :bot_id
    end

    def follow_twitter_client(params)
      bot = Bot.find_by_id(params[:bot_id])

      client = create_client(bot)

      bot.hash_tags.each do |hash_tag|
        client.search(hash_tag.hash_tag, result_type: "recent", lang: "ja", count: 1).take(1).each do |tweet|
          client.follow(tweet.user.id)
          save_tracking(Models::BotType::FOLLOW, tweet.user.id)
        end
      end
    end
end
