Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
  end
  resources :contacts
end
