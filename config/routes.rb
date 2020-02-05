Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products do
    resources :comments
  end
  root "products#index"
  
end