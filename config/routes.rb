# frozen_string_literal: true

Rails.application.routes.draw do
  get 'action_logs/index'
  get 'action_logs/new'
  get 'action_logs/create'
  get 'action_logs/show'
  get 'action_logs/edit'
  get 'action_logs/update'
  get 'action_logs/destroy'
  get 'search', to: 'searches#index', as: :search
  devise_for :users
  root 'home#index'
<<<<<<< HEAD

  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resource :bookmark, only: [:create, :destroy]
    resources :action_logs, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :bookmarks, only: [:index]
  resource :profile, only: [:show, :edit, :update]
<<<<<<< HEAD
  resources :action_logs, only: [:index, :show]
=======
  resources :action_logs, only: [:index, :show, :destroy]
>>>>>>> 8f5d7c0 (コミットメッセージ)
end
