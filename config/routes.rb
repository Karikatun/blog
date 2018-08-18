Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments

  end


  root 'welcome#index'
  resources :categories do
    resources :articles
  end

  get 'signup', to: 'users#new'
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
end
