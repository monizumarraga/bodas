Rails.application.routes.draw do
  resources :images
  resources :information
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions', :passwords => "users/passwords" }
  get '/list', to: 'users#index'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  root 'home#index'
end
