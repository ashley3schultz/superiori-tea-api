Rails.application.routes.draw do
  namespace :api do
    resources :games, only: [:index, :create]
  end

  resources :games, only: [:index, :create]

end
