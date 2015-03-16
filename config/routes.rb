Rails.application.routes.draw do

  # 管理機能
  namespace :admin do
    # ADMIN　TOP
    root to: 'manage#index'

    # BOT
    resources :bot

    # TWITTER
    resources :twitter
  end

  # auth
  match '/auth/twitter/callback', to: 'admin/bot#callback', via: 'get'
end
