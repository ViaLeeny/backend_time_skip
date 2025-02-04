Rails.application.routes.draw do
  
  # root 'users#signin'

  resources :topics
  resources :likes
  resources :contributions
  resources :events
  resources :users, only: [:index, :show]


  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  get '/inventory', to: 'users#inventory'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
