class Admin::BotController < ApplicationController

  NG = "ng".freeze

  def index
    bots
    @bot = Bot.new
  end

  def create
    bots
    @bot = Bot.new(bot_params)
    render action: 'admin/bot/index', alert: "登録失敗!!" if @bot.nil?

    if @bot.save
      redirect_to(admin_bot_index_path, notice: "登録完了!!")
    else
      render 'admin/bot/index'
    end
  end

  def destroy
    bot = find_destroy_bot
    if bot.save
      flash[:delete] =  "論理削除完了!!"
      redirect_to admin_bot_index_path
    else
      render 'admin/bot/index'
    end
  end

  private
    def bots
      @bots = Bot.find_by
    end

    def bot_params
      params.require(:bot).permit :twitter_name, :twitter_id, :access_token, :hash_tags
    end

    def find_destroy_bot
      Bot.find_by_id(params[:id]).tap do |bot|
        bot.twitter_id = bot.twitter_id.blank? ? NG : bot.twitter_id
        bot.twitter_name = bot.twitter_name.blank? ? NG : bot.twitter_name
        bot.access_token = bot.access_token.blank? ? NG : bot.access_token
        bot.hash_tags = bot.hash_tags.blank? ? NG : bot.hash_tags
        bot.deleted = true
      end
    end
end
