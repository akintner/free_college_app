Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :countries, only: [:index]
  namespace :api do 
    namespace :v1 do 
      get "/countries", to: "countries#index"
      get "/universities", to: "universities#index"
    end
  end
end
