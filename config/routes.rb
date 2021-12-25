Rails.application.routes.draw do
  devise_for :users

  #placeholder until we get some models in
  root "posts#index"
  resources :posts, only: [:new, :create, :index]
end
