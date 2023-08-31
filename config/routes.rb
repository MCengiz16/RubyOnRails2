Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:index, :show, :create, :update, :destroy]
    delete '/users', to: 'users#destroy_all'
  end
  get 'static_pages/landing_page'
  get 'static_pages/privacy_policy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

