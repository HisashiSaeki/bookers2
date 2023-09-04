Rails.application.routes.draw do
  get root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users

  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:create, :show, :index, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
