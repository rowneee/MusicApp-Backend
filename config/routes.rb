Rails.application.routes.draw do
  namespace :api do
    get 'playlist/index'
    get 'playlist/show'
    get 'playlist/create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users
    resources :playlists 
    resources :song_playlists
    resources :songs
  end
end
