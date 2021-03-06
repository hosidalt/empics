Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"pictures#index"
  resources :users, only: [:index, :edit, :update]
  resources :categories, only: [:new, :create, :edit, :update]
    resources :pictures, only: [:index, :create]

end
