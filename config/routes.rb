Rails.application.routes.draw do
  root "home#index"
  
  resources :countries, only: [:index]

  namespace :api do 
    namespace :v1 do 
      resources :countries, only: [:index] do 
        get "/universities", to: "countries#show"
      end
      get "/universities", to: "universities#index"
      get "/regions", to: "regions#index"
    end
  end
end
