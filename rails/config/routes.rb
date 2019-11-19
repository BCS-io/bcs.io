# frozen_string_literal: true

Rails.application.routes.draw do
  get '/check.txt', to: proc {[200, {}, ['simple_check']]}
  root to: "pages#home"
end
