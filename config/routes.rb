# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contacts, only: %i[create show]
end
