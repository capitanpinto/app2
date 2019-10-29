Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root 'static_pages#home'
  get 'static_pages/help'
  devise_for :users
end
