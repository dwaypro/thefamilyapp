Rails.application.routes.draw do
  resources :profiles
  resources :posts
  resources :families
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root 'homes#index'

  mount ActionCable.server => '/cable'
end
