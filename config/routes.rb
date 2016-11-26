  Rails.application.routes.draw do
  devise_for :users, controllers: {
      omniauth_callbacks: "users/omniauth_callbacks",
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  root to: 'phones#index'

  resources :phones, only: [:show, :index]
end
