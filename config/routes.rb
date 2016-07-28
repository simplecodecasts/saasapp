Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :users do
    resource :profile
  end
  resources :contacts
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
