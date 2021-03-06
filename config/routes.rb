Rails.application.routes.draw do
  get 'users/projects'

  devise_for :users
  root to: 'pages#home'
  resources :projects do
    resources :donations, only:[:new,:create,:edit,:update]

  end
  get '/user/projects', to: 'users#projects', as: :user_project
  get 'user/profile', to: 'users#profile', as: :user_profile
  get '/user/donations', to: 'users#donations', as: :user_donations
  get '/search', :to => 'projects#search_results', :as => :search

end
