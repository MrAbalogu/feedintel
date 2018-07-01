Rails.application.routes.draw do

  resources :aminas
  namespace :api, defaults: {format: 'json'} do
    scope :v1 do
      resources :reports
      resources :aminas
    end
  end 

  root to: 'pages#index' 

  get 'logout', to: 'users#logout', as: 'logout'
  
  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/terms'

  get 'pages/mission'

  get 'dashboard', to: 'dashboard#index', as: 'dashboard'

  resources :reports
  resources :report_categories
  devise_for :users
  resources :users 


# Avatar routes
get "avatar/:size/:background/:text" => Dragonfly.app.endpoint { |params, app|
  app.generate(:initial_avatar, URI.unescape(params[:text]), { size: params[:size], background_color: params[:background] })
}, as: :avatar



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
