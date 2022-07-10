
require 'api_constraints'
Rails.application.routes.draw do
namespace :api do
  scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
    resources :users, only: [:create, :show] do
      resources :appointments, :except =>[:show, :destroy]
    end
    resources :doctors, only: [:index, :create]
    get 'doctorAppointments', to: 'doctors#doctor_appointments'
  end
  
end 
  get '/users/:id', to: 'users#show'
  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end