Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  use_doorkeeper



  get '/api/posts' => 'api/posts#index'
  post '/api/posts' => 'api/posts#create'
  get '/api/posts/:id' => 'api/posts#show'
  put '/api/posts/:id' => 'api/posts#update'
  patch '/api/posts/:id' => 'api/posts#update'
  delete '/api/posts/:id' => 'api/posts#delete'

  post 'api/users' => 'api/users#create'
  delete 'api/users/:id' => 'api/users#delete'

end
