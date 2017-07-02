Rails.application.routes.draw do

  root 'stocks#index'
  devise_for :admins
  devise_for :users
  get '/history', to: 'orders#history'

  get 'admin_panel/orders', as: 'all_orders'
  get 'admin_panel/users', as: 'all_users'

  post '/:user_id/', to: 'admin_panel#activation' , as: 'activation'

  resources :stocks do
    post '/:user/', to: 'orders#create', as: 'order'
  end

end
