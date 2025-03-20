# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :posts, only: [:index, :show, :new, :create]
end
