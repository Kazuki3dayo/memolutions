Rails.application.routes.draw do
  devise_for :users

  root to: "memos#index"
  resources :memos
  resources :rooms, only: [:new, :create, :destroy]
end
