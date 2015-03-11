class Admin::BotController < ApplicationController
  def index
    list
    @bot = Bot.new
  end

  def create
    list
    @bot = Bot.new(bot_params)
    if @bot.nil?
      render({action: :index}, alert: "登録失敗!!")
    end

    if @bot.save
      redirect_to({action: :index}, notice: "登録完了!!")
    else
      render '/admin/manage/bot'
    end
  end

  def list
    @bots = Bot.find_by
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    bot = Bot.find_by_id(params[:id])
    bot.twitter_id = bot.twitter_id.blank? ? "ng" : bot.twitter_id
    bot.twitter_name = bot.twitter_name.blank? ? "ng" : bot.twitter_name
    bot.access_token = bot.access_token.blank? ? "ng" : bot.access_token
    bot.hash_tags = bot.hash_tags.blank? ? "ng" : bot.hash_tags
    bot.deleted = true
    if bot.save
      flash[:delete] =  "物理削除完了!!"
      redirect_to({action: :index})
    else
      render '/admin/manage/bot'
    end
  end

  private
    def bot_params
      params.require(:bot).permit(:twitter_name, :twitter_id, :access_token, :hash_tags)
    end
end
