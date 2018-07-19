Rails.application.routes.draw do
  get '/accounts', to: 'accounts#index'
  get '/accounts/:id', to: 'accounts#show'
  get '/transactions', to: 'transactions#index'
end
