Redshirt::Application.routes.draw do
  root 'players#show'

  resources :sessions
  resources :players
end
