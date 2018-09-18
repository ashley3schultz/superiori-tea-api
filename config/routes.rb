Rails.application.routes.draw do

    resources :games, only: [:index, :create]
    # resources :users, only: [:show]
end
