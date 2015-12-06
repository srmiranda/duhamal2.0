Rails.application.routes.draw do
  root "events#new"

  resources :events, only: [:index, :create, :new, :show]
end
