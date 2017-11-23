Rails.application.routes.draw do
    resources :clients, :cars
    resources :rentals
    
    root 'welcome#index'
end