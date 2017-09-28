Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'heros#index'
  resources :heros
  namespace :admin do
    resources :heros
  end
  resources :events
end
