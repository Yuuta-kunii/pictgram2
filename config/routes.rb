 Rails.application.routes.draw do
  get 'comments/new'
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
   post '/favorites',to: 'favorites#create'
   delete '/favorites',to: 'favorites#destroy'
   
   
  
   resources :users
   
   resources :topics 
   
   resources :topic do
    resources :comments, only: :create
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end
