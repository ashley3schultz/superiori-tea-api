Rails.application.routes.draw do
  resources :games, only: [:index, :create, :update]
  root to: "games#index"
end
