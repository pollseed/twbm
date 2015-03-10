class Admin::ManageController < ApplicationController
  def index
  end

  def bot
    list
    @bot = Bot.new
  end

  def create
    list
    @bot = Bot.new(bot_params)
    if @bot.nil?
      render({action: :bot}, alert: "登録失敗!!")
    end

    if @bot.save
      redirect_to({action: :bot}, notice: "登録完了!!")
    else
      render '/admin/manage/bot'
    end
  end

  def list
    @bots = Bot.find_by
  end

  def twitter
  end

  private
    def bot_params
      params.require(:bot).permit(:twitter_name, :twitter_id, :access_token, :hash_tags)
    end
end
