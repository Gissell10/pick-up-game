Rails.application.routes.draw do
  get 'pages/about'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :sports, :only => [:show, :index]
  get 'session/new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
