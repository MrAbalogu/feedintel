Rails.application.routes.draw do
  resources :reports
  resources :report_categories
  devise_for :users

  root to: 'users#show' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
