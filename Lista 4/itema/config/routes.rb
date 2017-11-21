Rails.application.routes.draw do
  resources :clients, :cars
  
  root 'welcome#index'
end