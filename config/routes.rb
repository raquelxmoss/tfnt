Rails.application.routes.draw do
  root "users#profile"
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users, only: :show
end
