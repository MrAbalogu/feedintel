Rails.application.routes.draw do


  root to: 'pages#index' 
  
  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/terms'

  get 'pages/mission'

  get 'dashboard/index'

  resources :reports
  resources :report_categories
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
