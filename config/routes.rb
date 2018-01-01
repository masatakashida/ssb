Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # Vue側 ルーティング
  root to: 'home#index'
  get '/about',   to: 'home#index'
  get '/contact', to: 'home#index'
  get '/edit-posts/:id', to: 'home#index'
  



  # RailsApi ルーティング
  namespace :api, format: 'json' do
  	resources :posts, only: [:index, :create, :update, :show]
  end

end
