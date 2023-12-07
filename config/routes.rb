Rails.application.routes.draw do
  resources :ordem_servicos
  resources :equipes
  resources :veiculos
  resources :funcionarios
  resources :parts
  resources :servicos
  resources :clientes

  devise_for :users
  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get '/users/sign_in', to: 'devise/sessions#new'
    post '/users/sign_in', to: 'devise/sessions#create'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  get 'home/dashboard'
  root 'home#dashboard'

  #get 'home/pecas'
  #get 'home/pecas/:id', to: 'home#pecas'
  
end
