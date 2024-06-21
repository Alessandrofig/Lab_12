Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
  resources :posts do
    resources :comments, only: [:new, :create]
  end
  resources :comments
  devise_for :users
  resources :users
  get 'profile', to: 'users#profile'
end
