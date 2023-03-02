# frozen_string_literal: true

#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

Rails.application.routes.draw do
  get 'home/home'
  get 'home/services'

  get 'items/index'
  get 'items/destroy'
  post 'items/update'
  post 'items/new'

  get 'login/logout'
  get 'login/profile'

  get 'login', to: 'login#login'
  post 'login', to: 'login#new'

  root 'home#home'
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
