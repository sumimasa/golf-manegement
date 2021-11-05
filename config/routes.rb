Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to:'home#index'
  resources :scores,only:[:new,:create,:show,:edit,:update]
  resources :users,only: :show
  
  
  

  
end
