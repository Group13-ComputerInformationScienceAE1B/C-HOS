Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: [:new, :edit, :create, :update, :destroy]
  get 'categories/index' => 'categories#index'
  post 'categories' => 'categories#create'
  get 'categories/:id' => 'categories#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
