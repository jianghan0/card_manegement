Rails.application.routes.draw do
  resources :cards, except: [:index, :show]

  devise_for :users
  get 'users/index'
  root 'users#index'

  # 管理者専用ページ
  namespace :admin do
    get 'cards/index'
  end

  # API
  namespace :api, {format: 'json'} do
    namespace :v1 do
      get 'cards/index'
    end
  end
end
