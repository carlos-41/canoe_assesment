Rails.application.routes.draw do
  root "home#index"

  resources :companies, except: [:show]
  resources :fund_managers, except: [:show]
  resources :funds, except: [:show]
end
