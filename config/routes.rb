Rails.application.routes.draw do
  resources :feeds
  root 'users#new'
  resources :feeds do
    collection do
        post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:create, :destroy,:index]
end
