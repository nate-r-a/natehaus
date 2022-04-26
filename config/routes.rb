# frozen_string_literal: true

Rails.application.routes.draw do
  get 'bocce/standings'
  root 'home#home'
end
