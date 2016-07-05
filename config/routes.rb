require 'api_constraints'

Rails.application.routes.draw do

  if Rails.env.development?
    mount SabisuRails::Engine => "/sabisu_rails"
  end

  devise_for :users

  namespace :api, defaults: { format: :json } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, only: [:show, :create, :update, :destroy]
      resources :sessions, only: [:create, :destroy]
      resources :boardgames, only: [:show]
      resources :instances, only: [:show, :create]
      resources :movements, only: [:show, :create, :destroy]
    end
  end

  root 'welcome#index'

end
