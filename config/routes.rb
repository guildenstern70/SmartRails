#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "home/index"
  get "home" => "home#home"
  get "about" => "home#about"
  get "contact" => "home#contact"
  get "home/more"
  get "up" => "rails/health#show", as: :rails_health_check
  get "login" => "sessions#new"

  namespace :settings do
    resource :password, only: [ :show, :update ]
    resource :profile, only: [ :show, :update ]

    root to: redirect("/settings/profile")
  end

  root "home#index"
end
