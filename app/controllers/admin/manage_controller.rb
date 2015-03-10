class Admin::ManageController < ApplicationController
  def index
  end

  def bot
    @bot = Bot.new
  end

  def create
    @bot = Bot.new(bot_params)
    if @bot.nil?
      redirect_to({action: :bot}, alert: "登録失敗!!")
    end

    @bot.save
    redirect_to({action: :bot}, notice: "登録完了!!")
  end

  def twitter
  end

  private
    def bot_params
      params.require(:bot).permit(:twitter_name, :twitter_id, :access_token, :hash_tags)
    end
end
