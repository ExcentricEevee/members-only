Rails.application.routes.draw do
  devise_for :users

  #placeholder until we get some models in
  root "home#index"
  resources :posts, only: [:new, :create, :index]
end
