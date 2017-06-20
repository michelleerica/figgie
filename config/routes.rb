Rails.application.routes.draw do

#consider changing the root later

root to:'photos#index'

#users
resources :users
resources :photos
resources :venues
resources :cuisines
resources :dishes

get '/users/:id/photos' => 'users#photos'


#sessions
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
