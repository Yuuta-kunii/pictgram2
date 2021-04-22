 Rails.application.routes.draw do
   get 'topics/new'
   get 'sessions/new'
   get 'users/new'
   root 'page#index'
   get 'page/help'
   get 'page/link'
  
   get   '/login',to:'sessions#new'
   post  '/login',to:'sessions#create'
   delete '/logout',to:'sessions#destroy'
   
   get '/favorites',to:'favorites#index'
   post 'favorites',to: 'favorites#create'
   
   get topics/index
   
  
   resources :users
   resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end
