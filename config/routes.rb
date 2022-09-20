Rails.application.routes.draw do
  root 'products#index'
  resources :products

  resources :checkout, only: [:create]

  post "checkout/create", to: "checkout#create"
end
