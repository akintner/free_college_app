Rails.application.routes.draw do
  root "home#index"
  
  resources :countries, only: [:index]

  namespace :api do 
    namespace :v1 do 
      resources :countries, only: [:index] do 
        get "/universities", to: "countries#show"
      end
      get "/universities", to: "universities#index"
      resources :regions, only: [:index, :show]
    end
  end
end
