# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :authors
  get '/check.txt', to: proc {[200, {}, ['simple_check']]}
  resource :contact, only: %i[create]
  root to: "pages#home"

  resource :pages, path: '' do
    get :about
    get :work
  end

  resource :works do
  end
end
