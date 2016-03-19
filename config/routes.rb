Rails.application.routes.draw do
  get '/about', to: 'pages#about'
  resources :posts do
    resources :comments
  end
  root 'posts#index'
end
