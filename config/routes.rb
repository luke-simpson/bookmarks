Bookmarks::Application.routes.draw do
  get "users/new"
  resources :bookmarks
  root  'bookmarks#index'
  
end
