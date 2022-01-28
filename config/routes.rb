Rails.application.routes.draw do
  get 'transaction_files/new'
  get 'transaction_files/create'
  root "companies#index"

  resources :companies, only: [:index] do
    resources :sales, only: [:index]
    resources :transaction_files, only: [:new, :create]
  end
end
