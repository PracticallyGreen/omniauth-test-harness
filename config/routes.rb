OmniAuthTestHarness::Application.routes.draw do
  root 'sessions#index'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/auth/failure', to: 'sessions#failure'
end
