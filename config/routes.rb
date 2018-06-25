Rails.application.routes.draw do
	root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

  # Al declarar las rutas de esta forma podemos acceder a ella mediante named routes: help_path, about_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
