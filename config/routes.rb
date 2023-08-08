Rails.application.routes.draw do
  # verb '/path_in_the_url', to 'controller#action', as: :prefix

  # Read All
  get '/pets', to: 'pets#index', as: :pets

  # Create
  # form page
  get '/pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'

  # Read One
  get '/pets/:id', to: 'pets#show', as: :pet

  # Update
  # form page
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'

  # Destroy
  delete '/pets/:id', to: 'pets#destroy'

end
