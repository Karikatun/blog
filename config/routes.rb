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

  controller :sessions do
     get 'login' => :new
     post 'login' => :create
     delete 'logout' => :destroy
     end
end
