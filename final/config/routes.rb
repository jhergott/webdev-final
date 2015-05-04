Rails.application.routes.draw do

  # The Golded 7 for the Ball model

  root 'balls#index'

  get '/balls/new' => 'balls#new'
  post '/balls' => 'balls#create'

  get '/balls' => 'balls#index'
  get '/balls/:id' => 'balls#show', :as => 'ball'

  get '/balls/:id/edit' => 'balls#edit'
  patch '/balls/:id' => 'balls#update'

  delete '/balls/:id' => 'balls#destroy'

end
