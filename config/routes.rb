Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get '/users/sign_in', to: 'devise/sessions#new'
    post '/users/sign_in', to: 'devise/sessions#create'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  get 'home/index'
  root 'home#index'
  
  


end
