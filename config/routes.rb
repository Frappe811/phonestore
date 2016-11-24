Rails.application.routes.draw do
  devise_for :users

  root to: 'phones#index'

  resources :phones, only: [:show, :index]
end
