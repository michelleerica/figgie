Rails.application.routes.draw do

  get 'favorite_photos/create'

  get 'favorite_photos/destroy'

#consider changing the root later

root to:'photos#index'

#users
resources :users
resources :photos
resources :venues
resources :cuisines
resources :dishes
resources :categories
resources :favorite_photos, only: [:create, :destroy]

get '/users/:id/photos' => 'users#photos'
#
# #add dishes form on venue
# # create
# get "/works/new" => "works#new"
# post "/works"  => "works#create"
#
# # read
# get "/works" => "works#index"
# get "/works/:id" => "works#show"
#
# # update
# get  "/works/:id/edit" => "works#edit", as: 'work' # need this 'as' for the 'form_for', long story
# # post "/works/:id/edit"   => "works#update"
# patch "/works/:id/edit"  => "works#update"  # need this 'patch' version for 'form_for'


#sessions
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
