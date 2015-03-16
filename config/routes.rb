Rails.application.routes.draw do

  match '/auth/twitter/callback', to: 'admin/bot#callback', via: 'get'

  match '/bot/update', to: 'admin/bot#update', via: 'post'

  # 管理機能
  namespace :admin do
    # ADMIN　TOP
    root to: 'manage#index'

    # BOT
    resources :bot

    # TWITTER
    # 作ってないのでコメントアウト
    # resources :twitter
  end
end
