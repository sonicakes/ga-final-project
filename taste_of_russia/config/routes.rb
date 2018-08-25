Rails.application.routes.draw do
  root :to => 'pages#index'
  resources :customers
  resources :bookings
  resources :tours

  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'  # This will be the path users use to log-out.
end
