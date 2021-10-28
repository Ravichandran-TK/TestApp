require 'api_constraints'

Rails.application.routes.draw do

  resources :sub_ordinates
  resources :employees
  resources :appointments
  resources :patients
  resources :physicians
  resources :books
  resources :authors
  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, constraints: ApiConstraints.new(versioin: 1, default: true) do
      resources :products
    end

    scope module: :v2, constraints: ApiConstraints.new(versioin: 2, default: false) do
      resources :products
    end
  end
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
end
