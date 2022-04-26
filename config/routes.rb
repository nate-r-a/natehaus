# frozen_string_literal: true

Rails.application.routes.draw do
  get 'bocce', to: "bocce#standings"
  root 'home#home'
end
