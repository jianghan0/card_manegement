Rails.application.routes.draw do
  root 'users#index'
  
  resources :cards, except: [:index, :show]

  devise_for :users
  get 'users/index'
end
