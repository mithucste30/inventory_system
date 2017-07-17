Rails.application.routes.draw do
  resources :containers do
    resources :items, controller: 'containers/items', on: :member
  end

  resources :item_fields

  resources :item_types

  resources :items do
    get :add, on: :collection
  end

  get '/containers/new/:container_id', to: 'containers#new', as: :new_nested_container
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
