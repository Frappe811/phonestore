Rails.application.routes.draw do
  devise_for :admins ,controllers: {
      sessions: 'admins/sessions'
  }
  devise_for :users, controllers: {
      omniauth_callbacks: "users/omniauth_callbacks",
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  root to: 'phones#index'

  # get '/carts/:phone_id', to: 'carts#add', as:'add_to_cart'

  resources :phones, only: [:show, :index]
  resources :orders
  resource :carts do
    get ':phone_id', to: 'carts#add', as: :add_to
    get 'remove/:phone_id', to: 'carts#remove', as: :remove_from
  end
  namespace :manages do
    resources :phones, except: [:destroy]
    resources :categories, except: [:destroy]
    resources :orders
  end
  namespace :api do
    namespace :v1 do
      resources :carts, only: [:show]
      resources :phones
    end
  end
  # api
  namespace :api do
    namespace :v1 do
      resources :phones, only: [:show]
    end
  end
end
