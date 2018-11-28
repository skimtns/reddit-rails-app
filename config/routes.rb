Rails.application.routes.draw do
  #kind of route 
  # syntax for this is: controller#method name 
  root 'subs#index' 

  # get 'subs/new'
  # get '/subs/new', to: 'subs#new'

  # post '/subs', to: 'subs#create'

  # # :id placeholder for the id number 

  # put '/subs/:id', to: 'subs#update'

  # delete '/subs/:id', to: 'subs#delete'

  #instead of typing all the commented out comments, do the below statement. 
  
  #embedded routes, nested routes
  resources :subs do
    resources :topics 
  end 
  
  resources :topics do
    resources :comments 
  end 
  
end

