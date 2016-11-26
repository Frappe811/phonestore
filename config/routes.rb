  Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root to: 'phones#index'

  resources :phones, only: [:show, :index]
end
