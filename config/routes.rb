Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'pages#index'
  resources :photos, only: [:create]

  resources :comments, only: [:index, :create, :destroy] do
    member do
      get 'type/:type', :action => 'index'
    end
  end

  resources :likes, only: [:destroy] do
    member do
      post 'type/:type', :action => 'create'
    end
  end

  resource :user do
    resource :profile
  end

end
