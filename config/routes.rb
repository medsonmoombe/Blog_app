Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  root 'users#index'

  resources :users, only: %I[index show] do
    resources :posts, only: %I[index show new create]
  end

  resources :posts do
    resources :comments, only: %i[create]
    resources :likes, only: %i[create]
  end
end