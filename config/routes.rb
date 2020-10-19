Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home' # / redirects to /posts
  get 'about' => 'pages#about', as: 'about' # regular route
  resources :posts do
    resources :comments
  end
end
