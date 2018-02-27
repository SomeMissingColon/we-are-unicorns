Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  resources :projects do
    resources :donations, only:[:new,:create,:edit,:update]

  end
  get '/search', :to => 'projects#search_results', :as => :search
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
