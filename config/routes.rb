Rails.application.routes.draw do
  root "sessions#index"
  resources :sessions, only: [:index, :create]
  delete '/logout' => "sessions#destroy", as: 'logout'
  resources :users
  resources :sals, only: [:index, :create, :new, :update]
  get "/sals/:id/edit" => "sals#edit", as: "edit_sal"
  resources :accounts
  get '/payslip/:id' => "accounts#payslip", as: 'payslip'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
