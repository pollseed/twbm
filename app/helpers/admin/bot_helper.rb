module Admin::BotHelper
  def bots?
    bots
  end

  def bots
    @bots ||= Bot.find_by
  end
end
