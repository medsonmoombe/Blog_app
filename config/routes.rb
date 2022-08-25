Rails.application.routes.draw do
  get 'likes/create'
  get 'comments/new'
  get 'comments/create'
  root 'users#index'

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  end
end
