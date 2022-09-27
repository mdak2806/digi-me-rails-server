Rails.application.routes.draw do
 
  # root to temporary home page
  root to: 'users#home'

  # roots to login details
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy' 

  #Get the login token from Knock
  post '/user_token' => 'user_token#create'
  #User routes
  get '/users/current' => 'users#current'

  post '/user/current/update' => 'users#update'

  #User total_score increment
  post '/users/current/add_total_score/:level' => 'users#add_total_score'

  #pets current route
  get '/pets/current' => 'pets#current'

  post '/pets' => 'pets#create'
  # get '/pet/new' => 'pets#new'

  # get '/pet/index' => 'pets#index'
  # get '/pet/create' => 'pets#create'
  # delete '/pet' => 'pets#destroy'

  # updates the pet's last_:action time using the servers Time.now
  post '/pets/:id/action/feed' => 'pets#update_last_fed'
  post '/pets/:id/action/drink' => 'pets#update_last_drank'
  post '/pets/:id/action/sweets' => 'pets#update_last_sweets'


  # retrieve message from db for pet to relay to user
  get '/messages/food' => 'messages#fed'
  get '/messages/drink' => 'messages#drank'
  get '/messages/sweets' => 'messages#sweets'



  #resources
  resources :users
  resources :pets
  resources :accessories


end 
