 Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  resource :dashboard, only: [:show]
  resources :shouts, only: [:create, :show]
  resources :text_shouts, only: [:create ] 
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :text_shouts, only: [:create ]
end
