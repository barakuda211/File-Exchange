Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      omniauth_callbacks: 'users/omniauth_callbacks'
  }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :files, only: %i[show destroy new create]



end
