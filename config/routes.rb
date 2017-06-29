Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  get '/history', to: 'orders#history'

  resources :stocks
  root 'stocks#index'
end
