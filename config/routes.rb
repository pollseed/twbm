Rails.application.routes.draw do
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
