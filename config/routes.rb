Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'homes/index'
  root 'homes#index'

  resources :challenges, except:[:destroy]
  resources :users, only: [:show, :edit, :destroy, :create]
  resources :scoreboard do
    resources :notes
  end

  get 'auth/developer', as: 'developer_auth'
  get 'auth/github', as: 'github_auth'

  match 'auth/:provider/callback' => 'sessions#create', :via => [:get, :post]

  get 'sessions/destroy', as: 'logout'

end
