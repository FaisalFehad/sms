Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins
  get '/history', to: 'orders#history'

  resources :stocks
  root 'stocks#index'
end
