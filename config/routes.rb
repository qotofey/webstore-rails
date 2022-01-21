# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  root 'home#index'
end
