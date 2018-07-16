Rails.application.routes.draw do
	root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  # Al declarar las rutas de esta forma podemos acceder a ella mediante named routes: help_path, about_path

  # Creamos las rutas para el CRUD de la tabla users
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
