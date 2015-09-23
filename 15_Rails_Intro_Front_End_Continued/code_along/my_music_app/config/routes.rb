Rails.application.routes.draw do

  resources :artists do
    resources :songs
    resources :reviews
  end

  resources :songs do
    resources :review
  end

  #establish a custom route
  get 'about', to: "static_pages#about", as: "about"
  get 'test', to: "static_pages#test", as: "test"
 #establish a root_path
  root 'static_pages#home'

end
