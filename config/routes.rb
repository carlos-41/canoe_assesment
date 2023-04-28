Rails.application.routes.draw do
  root "home#index"

  get "/duplicate_fund_warnings" => "duplicate_fund_warning#index"
  delete "/duplicate_fund_warning/:id" => "duplicate_fund_warning#resolve", :as => :duplicate_fund_warning
  
  resources :companies, except: [:show]
  resources :fund_managers, except: [:show]
  resources :funds, except: [:show]
end
