Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/about' => 'pages#about'
  resources :users, :only => [:new, :create, :index]
  get 'session/new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :sports, :only => [:show, :index]
  get '/sports' => 'sports#index'


  resources :events, :only => [:new, :create, :index, :show]
  get '/events' => 'events#index'
  resources :events do
    member do
      get 'join'
      get 'leave'
    end
  end
end
