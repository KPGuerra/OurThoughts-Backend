Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :letters
      resources :thoughts
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end 
  end
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
