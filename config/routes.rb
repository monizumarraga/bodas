Rails.application.routes.draw do
  resources :presents
  resources :details
  resources :images
  resources :information
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions', :passwords => "users/passwords" }
  get '/list', to: 'users#index'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'users_search', to:"users#search";
  get 'user/us', to:"users#us"
  get 'user/information', to:"users#information"
  get 'user/bus', to:"users#bus";
  get 'user/hotel', to: "users#hotel"
  get 'user/hair', to: "users#hair"
  get 'user/makeup', to: "users#makeup"
  get 'user/prewedding', to: "users#prewedding"
  get 'user/presents', to: "users#presents"
  
  root 'home#index'
end
