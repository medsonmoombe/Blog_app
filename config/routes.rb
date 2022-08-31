Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :users, only: %I[index show] do
    resources :posts, only: %I[index show new create]
  end

  resources :posts do
    resources :comments, only: %i[create]
    resources :likes, only: %i[create]
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
