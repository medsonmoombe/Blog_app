Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  end
end
