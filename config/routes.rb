Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root to: 'sessions#new'
 resources :users, only: [:index, :show, :new, :create, :destroy]


 get '/login', to: 'sessions#new', as: 'login'
 get 'signup', to:'users#new', as: 'signup'
 post 'signup', to:'users#create'
 post '/login', to: 'sessions#create'
 delete '/logout', to: 'sessions#destroy', as: 'logout'

 get 'users/:id/favorites/new', to: 'favorites#new', as:'new_favorite'
 post 'users/:id/favorites', to: 'favorites#create', as: "favorites"
 get 'users/:id/favorites', to: 'favorites#show'
 get 'users/:id/favorites', to: 'favorites#show', as:'show_favorite'
 get 'users/:id/favorites/edit', to: 'favorites#edit', as: 'edit_favorite'
 patch 'users/:id/favorites', to: 'favorites#update'

 resources :favorites
 resources :categories

end
