Rails.application.routes.draw do
  devise_for :users
  
  resources :service_tubes

  root to: 'service_tubes#index'
  
end
