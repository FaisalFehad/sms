Rails.application.routes.draw do

  resources :stocks do
    post '/:user', to: 'orders#create', as: 'order'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'stocks#index'
  devise_for :admins
  get '/history', to: 'orders#history'
  devise_for :users


end
