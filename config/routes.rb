Rails.application.routes.draw do
  get 'users/new'
  root 'page#index'
  get 'page/help'
  get 'page/link'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
