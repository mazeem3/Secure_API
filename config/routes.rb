Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  use_doorkeeper


  post '/api/users' => 'api/users#create'

  get '/api/posts' => 'api/posts#index', as: :api_index
  post '/api/posts' => 'api/posts#create'
  get '/api/posts/:id' => 'api/posts#show'
  patch '/api/posts/:id' => 'api/posts#update'
  delete '/api/posts/:id' => 'api/posts#delete'
end
