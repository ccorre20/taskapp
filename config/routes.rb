Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'tasks#index'

  get '/mytasks' => 'tasks#index'
  get '/mytasks/new' => 'tasks#new'
  post '/mytasks/new' => 'tasks#create'
  get '/mytasks/:id' => 'tasks#update', as: 'mytask'
  post '/mytasks/:id' => 'tasks#destroy', as: 'mydestroytask'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users/' => 'users#create'

end
