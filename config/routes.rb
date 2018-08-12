Rails.application.routes.draw do
  root 'users#index'

  resources :cards, except: [:index, :show]

  devise_for :users
  get 'users/index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      get 'cards/index'
    end
  end
end
