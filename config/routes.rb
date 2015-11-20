Rails.application.routes.draw do
  
  root 'welcome#index'
  get 'welcome/index'
  
  resources :posts
  
  resources :microposts do 
      resources :comments
  end
      
  resources :uploads
  
  get 'profile/index'
  get 'profile/new'
  get 'profile/', to: 'profile#index'
  get 'profile/:uname', to: 'profile#show'

  #devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",  registrations: 'users/registrations' }
  resources :users, only: [:index, :show]
end
