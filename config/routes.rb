Rails.application.routes.draw do

  get 'admin_panel/orders', as: 'all_orders'
  get 'admin_panel/users', as: 'all_users'

  resources :stocks do
    post '/:user/', to: 'orders#create', as: 'order'
  end

  root 'stocks#index'
  devise_for :admins
  get '/history', to: 'orders#history'
  devise_for :users
end
