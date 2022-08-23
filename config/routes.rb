# frozen_string_literal: true

Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
end
