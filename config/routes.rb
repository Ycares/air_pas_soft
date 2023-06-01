Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :weapons, only: %i[index show edit update] do
    resources :orders, only: %i[create]
  end
  resources :orders, only: %i[index]
  namespace :owner do
    resources :weapons, only: %i[index new create]
    resources :orders, only: %i[index] do
      member do
        patch 'accept'
        patch 'decline'
      end
    end
  end
end
