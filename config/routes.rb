Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
	root 'pages#home'
	get "about", to: "pages#about"
	
  resources :articles

	get 'signup', to: 'users#new'
	post 'users', to: 'users#create'

	resources :users, except: [:new]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
	resources :categories, except: [:destroy]  # Defines the root path route ("/")
  # root "articles#index"
end
