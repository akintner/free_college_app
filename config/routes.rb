Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :countries, only: [:index]

  namespace :api do 
    namespace :v1 do 
      resources :countries, only: [:index] do 
        get "/universities", to: "countries#show"
      end
      get "/universities", to: "universities#index"
    end
  end
end
