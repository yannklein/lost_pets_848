Rails.application.routes.draw do
  # - As a user I can see all found pets
  get 'pets', to: 'pets#index', as: :pets
  # - As a user I can add a pet I found
  get 'pets/new', to: 'pets#new', as: :new_pet
  post 'pets', to: 'pets#create'
  # - As a user I can see details about one found pet
  get 'pets/:id', to: 'pets#show', as: :pet
  # - As a user I can update a pet
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch 'pets/:id', to: 'pets#update'
  # - As a user I can delete a pet
  delete 'pets/:id', to: 'pets#destroy'
end
