Rails.application.routes.draw do

  resources :charity_users
  resources :charities, only: [:index, :show]
  resources :users, only: [:index, :show]

  # java script (fetch url) | rails (controller/method)

  post '/signin', to: 'users#signin'

  get '/validate', to: 'users#validate'

  get '/inventory', to: 'users#inventory'

  post '/signup', to: 'users#signup'

  # post '/createPot', to: 'users#createItem'



end
