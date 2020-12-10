Rails.application.routes.draw do
  devise_for :users

  root to: "memos#index"
  resources :memos
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
