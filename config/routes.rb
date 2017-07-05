Rails.application.routes.draw do

  scope '/admin' do
    get 'admin_panel/orders', to: 'admin_panel#orders', as: 'all_orders'
    get 'admin_panel/users', to: 'admin_panel#users', as: 'all_users'
    post ':user_id/', to: 'admin_panel#activation' , as: 'activation'
  end

  resources :stocks do
    post '/:user/', to: 'orders#create', as: 'order'
  end

  post '/:order/', to: 'orders#return', as: 'return'

  devise_for :admins
  devise_for :users
  get '/history', to: 'orders#history'
  root 'stocks#index'
end
