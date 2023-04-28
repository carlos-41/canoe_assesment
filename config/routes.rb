Rails.application.routes.draw do
  root "home#index"

  resources :companies, except: [:show]
end
