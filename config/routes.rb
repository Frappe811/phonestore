Rails.application.routes.draw do
    resources :phones, only: [:index]
end
