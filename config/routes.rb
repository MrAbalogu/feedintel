Rails.application.routes.draw do

  resources :aminas
  namespace :api, defaults: {format: 'json'} do
    scope :v1 do
      resources :reports
      resources :aminas
    end
  end 

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
  resources :users 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
