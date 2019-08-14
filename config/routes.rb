# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'contacts#index'
  resources :contacts, only: %i[create show index]
end
