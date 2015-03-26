class Admin::HashTagsController < ApplicationController
  def index
    @hash_tag = HashTag.new
  end

  def create
    hash_tag = HashTag.new(hash_tag_params)

    if hash_tag.save
      @hash_tag = HashTag.new
      render 'admin/hash_tags/index'
    else
      render action: 'admin/bot/index', alert: "登録失敗!!"
    end
  end

  private
    def hash_tag_params
      params.require(:hash_tag).permit :hash_tag
    end
end
