#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#

Rails.application.routes.draw do
  resources :users, only: %i[new create]
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/logout'
  get 'users/new'
  post 'users/create'
  get 'home/home'
  get 'home/services'
  get 'home/about'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'welcome#index'
  root 'welcome#index'
end


