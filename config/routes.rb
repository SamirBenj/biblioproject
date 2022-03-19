Rails.application.routes.draw do
  # devise_for :views
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  get "home", to: "home#index"
  # resources:livres, only: :show
  resources :livres, only: [:show, :index, :edit, :update, :new, :create, :destroy]
  # delete "users/:id", to: "users#destroy"
  # devise_for :users, controllers: { sessions: 'users/sessions' }
end
