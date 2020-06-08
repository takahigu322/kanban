Rails.application.routes.draw do
  devise_for :cards
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'

 
  resources :list, only: %i(new create edit update destroy) do
    resources :card, only: %i(new create)
  end
  
end
