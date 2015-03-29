class Admin::BotHashTagRelsController < ApplicationController
  def index
    @bot_hash_tag_rel = BotHashTagRel.new
  end

  def create
    rel = BotHashTagRel.new(bot_hash_tag_rels_params)

    if rel.save
      @bot_hash_tag_rel = BotHashTagRel.new
      render 'admin/bot_hash_tag_rels/index'
    else
      @bot_hash_tag_rel = BotHashTagRel.new
      render action: 'admin/bot_hash_tag_rels/index', alert: "登録失敗!!"
    end
  end

  private
    def bot_hash_tag_rels_params
      params.require(:bot_hash_tag_rel).permit :bot_id,:hash_tag_id
    end
end
