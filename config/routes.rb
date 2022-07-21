Rails.application.routes.draw do
 
  # User route for sign_up
  devise_for :users, controllers: { registrations: 'registrations' }
  
  namespace :api do
    namespace :v1 do
      # Autenticated routes and validated token
      post :auth, to: 'authentication#login'
      get  '/auth_token', to: 'authentication#validate_user'
      
      # Users routes for Admin
      get '/usersall', to: 'user#index'
      get '/usershow/:id', to: 'user#show'

      resources :transactions
      resources :categories
      resources :services
      resources :products
    end
  end
end