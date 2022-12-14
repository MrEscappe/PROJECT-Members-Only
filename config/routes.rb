# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end
  devise_for :users

  root to: 'posts#index'
end
