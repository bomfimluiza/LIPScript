Rails.application.routes.draw do
    resources :clients, :cars do
        resources :rentals
    end
    
    root 'welcome#index'
end