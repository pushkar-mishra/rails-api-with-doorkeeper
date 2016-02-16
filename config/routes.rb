Rails.application.routes.draw do
  
  use_doorkeeper
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :posts
    end
  end
  
  root 'posts#index'
  resources :posts

end
