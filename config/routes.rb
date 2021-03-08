Rails.application.routes.draw do
  get '/characters' => 'characters#index'
  get '/characters/:id' => 'characters#show'
  post '/characters/:id' => 'characters#new' 
  get '/characters/:id' => 'characters#edit' 
  patch '/characters/:id' => 'characters#update'
  delete '/characters/:id' => 'characters#delete'

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  post '/users/:id' => 'users#new' 
  get '/users/:id' => 'users#edit' 
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#delete'
end
