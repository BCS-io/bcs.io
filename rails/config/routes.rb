# frozen_string_literal: true

Rails.application.routes.draw do
  get '/check.txt', to: proc {[200, {}, ['simple_check']]}
  resource :contact, only: %i[create]
  root to: "pages#home"
end
