Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: [:new, :edit, :create, :update, :destroy]
  root 'categories#index'
  get 'categories/index' => 'categories#index'
  post 'categories' => 'categories#create'
  post 'categories/:id/edit' => 'categories#edit'
  post 'categories/:id' => 'posts#index'
  post 'categories/:id/destroy' => 'categories#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :edit, :create, :update, :destroy]
  get 'posts' => 'posts#index'
  get 'categories/:id' => 'posts#index'
  get 'categories/:id/new' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  post 'posts/:id/destroy' => 'posts#destroy'
end
