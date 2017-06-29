Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  resources :stocks
  root 'stocks#index'
end
