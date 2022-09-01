Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :users, only: %I[index show] do
    resources :posts, only: %I[index show new create destroy]
  end

  resources :posts do
    resources :comments, only: %i[create destroy]
    resources :likes, only: %i[create]
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
