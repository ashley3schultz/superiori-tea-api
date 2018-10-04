Rails.application.routes.draw do

  namespace :api do
      namespace :v1 do
        resources :games, only: [:index, :create, :update]
      end
  end
  root to: "games#index"
end
