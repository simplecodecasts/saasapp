Rails.application.routes.draw do
  root to: 'pages#home'
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'about', to: 'pages#about'
  
  resources :contacts
end
