Rails.application.routes.draw do
  get '/accounts', to: 'accounts#index'
  get '/transactions', to: 'transactions#index'
  get '/accounts/edit/:id', to: 'accounts#edit', as: :account
  patch '/accounts/:id', to: 'accounts#update'
  put '/accounts/:id', to: 'accounts#update'
  get '/accounts/new', to: 'accounts#new', as: :new_account
  post'/accounts', to: 'accounts#create'
  get '/accounts/:id', to: 'accounts#show', as: :an_account
end
