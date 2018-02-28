Rails.application.routes.draw do
  get 'users/projects'

  devise_for :users
  root to: 'projects#index'
  resources :projects do
    resources :donations, only:[:new,:create]
  end
  get '/user/projects', to: 'users#projects', as: :user_project
  get '/user/donations', to: 'users#donations', as: :user_donations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
