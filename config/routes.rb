Rails.application.routes.draw do
  resources :articles
  resources :users, only: [:index, :create, :update, :destroy]

  resources :articles, only: [:index, :create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
