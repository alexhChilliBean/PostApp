Rails.application.routes.draw do
  root 'pages#index'

  resources :posts, :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
