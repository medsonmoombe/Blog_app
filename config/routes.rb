# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'users/index'
  get 'users/show'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
end
