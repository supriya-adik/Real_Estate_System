Rails.application.routes.draw do
resources :enquiry
  get 'enquiry/index'
  get 'enquiry/new'
  get 'enquiry/create'
  get 'enquiry/show'
  get 'enquiry/thank_you_page'

resources :property
  get 'property/new'
  post 'property/create'
  get 'property/index'
  get 'property/show'
  get 'property/edit'
  get 'property/update'
  get 'property/destroy'
  get '/search', to:"property#search"


get 'sessions/new'
get 'sessions/create'
get 'sessions/destroy'
get 'sessions/welcome'

resources :users
root 'home#index'
get  'home/about_us'
get  'home/thank_you'
get  'home/arion'
get  'home/arcade'
get  'home/parvathy'
get  'home/shravi'
get  'home/aarna_villa'
get  'home/royal_in'

resources :users
get 'users/show'
get 'users/index'
get 'users/profile'

resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'
match '/users/:id',     to: 'users#show',       via: 'get'



# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
