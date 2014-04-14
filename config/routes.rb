Bookmarks::Application.routes.draw do
  resources :users
  get "users/new"
  resources :bookmarks
  root  'bookmarks#index'
  match '/signup',  to: 'users#new',            via: 'get'
  
end
