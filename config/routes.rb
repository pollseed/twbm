Rails.application.routes.draw do
  namespace "admin" do
    # ADMIN　TOP
    get 'manage' => 'manage#index'

    # BOT
    get 'manage/bot' => 'manage#bot'
    post 'manage/bot' => 'manage#bot'

    # TWITTER
    get 'manage/bot/twitter' => 'manage#twitter'
    post 'manage/bot/twitter' => 'manage#twitter'
    delete 'manage/bot/twitter' => 'manage#twitter'
  end
end
