module BotConcern
  def bot_new
    @bot = Bot.new
  end

  def bots
    @bots = Bot.find_by
  end
end
