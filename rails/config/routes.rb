Rails.application.routes.draw do
  get '/check.txt', to: proc {[200, {}, ['simple_check']]}
end
