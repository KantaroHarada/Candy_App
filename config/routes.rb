Rails.application.routes.draw do

  get 'stocks/new'

  get 'products/new'

  get 'sessions/new'

  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/product/search',  to: 'products#search'
  post '/basket', to: 'baskets#create'
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
