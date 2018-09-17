Rails.application.routes.draw do
  namespace :game do
    resources :games, only: [:index, :create]
  end
end
