 Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  resource :dashboard, only: [:show]
  resource :search, only: [:show]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create ]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show] do
    post 'follow' => 'following_relationships#create'
    delete 'follow' => 'following_relationships#destroy'
  end
  resources :photo_shouts, only: [:create ]
  resources :hashtags, only: [:show]
end
