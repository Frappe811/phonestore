  Rails.application.routes.draw do
  devise_for :users, controllers: {
      omniauth_callbacks: "users/omniauth_callbacks",
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  root to: 'phones#index'

  # get '/carts/:phone_id', to: 'carts#add', as:'add_to_cart'

  resources :phones, only: [:show, :index]
  resource :carts do
    get ':phone_id', to: 'carts#add', as: :add_to
    get 'remove/:phone_id', to: 'carts#remove', as: :remove_from
  end
end
