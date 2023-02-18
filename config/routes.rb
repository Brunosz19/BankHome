Rails.application.routes.draw do
  devise_for :users
  
  root 'accounts#new'

  get '/login', to: 'sessions#new'
  get '/signup', to: 'sessions#signup'

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  get 'sessions/new'
  post 'sessions/create'
  delete 'sessions/destroy'
  get 'sessions/sign_up'
  post 'sessions/create_user'

  resources :users
  resources :accounts
end
