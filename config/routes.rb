Rails.application.routes.draw do
  resources :feeds
  root 'users#new'
  resources :feeds do
    collection do
        post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy,:index]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
