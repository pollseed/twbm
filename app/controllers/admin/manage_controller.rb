class Admin::ManageController < ApplicationController
  def index
  end

  def delete

  end

  def twitter
  end

  private
    def bot_params
      params.require(:bot).permit(:twitter_name, :twitter_id, :access_token, :hash_tags)
    end
end
