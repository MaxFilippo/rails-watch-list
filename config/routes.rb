Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :lists, only: [:new, :show, :create, :index, :destroy] do
    resources :bookmark, only: [:new, :create]
  end
end
