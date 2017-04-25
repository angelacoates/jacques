Rails.application.routes.draw do

  resources :notes
get '/api/notes' => 'notes#index'
post '/api/notes' => 'notes#index'
end
