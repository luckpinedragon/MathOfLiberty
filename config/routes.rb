Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

    get 'search', to: 'pages#search'
    get 'pages/filter'

    get 'pages/show'

    get 'topics', to: 'topics#index'
    get 'topics/show'

    get 'questions', to: 'questions#index'
    get 'questions/show'

  resources :users, only: [:index, :show] do
    member do
      get :challengings
    end
  end

  resources :progressions, only: [:create, :update, :destroy]

  resources :results, only: [:create, :update, :destroy]

end
