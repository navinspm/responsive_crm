Rails.application.routes.draw do
  resources :contacts
  resources :services
  resources :spares
  resources :customers
  resources :cars

  devise_for :admins, path: "admin", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register_navin', sign_up: 'known_only_to_me' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  root 'cars#index'
end
