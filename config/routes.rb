Rails.application.routes.draw do

  get 'photos/new'

  get 'photos/create'

  get 'photos/edit'

  get 'photos/update'

  get 'photos/index'

  get 'photos/show'

  get 'photos/destroy'

#consider changing the root later

root to:'users#new'

#users
resources :users

#sessions
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
