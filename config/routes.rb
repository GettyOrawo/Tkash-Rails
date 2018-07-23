Rails.application.routes.draw do
  get '/accounts', to: 'accounts#index'
  get '/accounts/:id', to: 'accounts#show', as: :an_account
  get '/transactions', to: 'transactions#index'
  get '/accounts/edit/:id', to: 'accounts#edit', as: :account
  # post '/accounts/edit/:id', to: 'accounts#update'
  put '/accounts/:id', to: 'accounts#update', as: :update_account
end
