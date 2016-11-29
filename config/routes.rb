  Rails.application.routes.draw do
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  devise_for :users, controllers: {
      omniauth_callbacks: "users/omniauth_callbacks",
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  root to: 'phones#index'

  resources :phones, only: [:show, :index]
end
