Rails.application.routes.draw do
  get 'users/projects'

  devise_for :users
  root to: 'projects#index'
  resources :projects do
    resources :donations, only:[:new,:create,:edit,:update]

  end
end
