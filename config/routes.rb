Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'accounts#index'

  get '/login', to: 'sessions#new'
  get '/signup', to: 'sessions#signup'
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  Rails.application.routes.draw do
    get 'sessions/new'
    post 'sessions/create'
    delete 'sessions/destroy'
    get 'sessions/sign_up'
    post 'sessions/create_user'
  end

  Rails.application.routes.draw do
    resources :accounts
  end
end
