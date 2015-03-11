Rails.application.routes.draw do
  namespace :admin do
    # ADMIN　TOP
    root :to => 'manage#index'

    resources :bot

    # BOT
    # get 'manage/bot' => 'manage#bot'
    # post 'manage/bot' => 'manage#create'
    # delete 'manage/bot' => 'manage#delete'

    # TWITTER
    get 'manage/bot/twitter' => 'manage#twitter'
    post 'manage/bot/twitter' => 'manage#twitter'
    delete 'manage/bot/twitter' => 'manage#twitter'
  end
end
