Rails.application.routes.draw do
  root "welcome#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

  resources :celebrants do
    resources :duties
  end
  resources :tasks
end
