Rails.application.routes.draw do
  root 'application#hello'
  get '/secret' => 'secrets#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
