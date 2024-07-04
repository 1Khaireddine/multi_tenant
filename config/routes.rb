Rails.application.routes.draw do
  root 'home#index'
  resources :companies

  get "/connect_to" => "home#connect_to"

end
