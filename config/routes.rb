Rails.application.routes.draw do

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
  root to: "static#home"
  
  namespace :api do
    namespace :v1 do
      resources :questions
    end
  end

  resources :users, only: [:create, :show, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
