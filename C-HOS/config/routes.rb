Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :edit, :create, :update, :destroy]
  root 'posts#index'
  get 'posts' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  post 'posts/:id/destroy' => 'posts#destroy'
end
