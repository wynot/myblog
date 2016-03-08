Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :posts do
  	resources :comments
  end

  root 'pages#about'

  get '/about', to: 'pages#about'

  get '/notes', to: 'posts#index'

end
