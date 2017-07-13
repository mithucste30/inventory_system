Rails.application.routes.draw do
  resources :containers do
    resources :items, except: :new, on: :member
    get '/items/new/:item_type_id', to: 'items#new', as: :new_item, on: :member
  end
  resources :item_fields
  resources :item_types
  resources :items, except: :new
  get '/items/new/:item_type_id', to: 'items#new', as: :new_item
  get '/containers/new/:container_id', to: 'containers#new', as: :new_nested_container
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
