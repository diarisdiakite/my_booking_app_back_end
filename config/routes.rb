# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :cars, defaults: { format: :json }

      resources :users, defaults: { format: :json } do
        resources :reservations, defaults: { format: :json }
      end
      # ... other API resources ...
    end
  end
end
