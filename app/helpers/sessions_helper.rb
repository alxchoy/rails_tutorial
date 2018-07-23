module SessionsHelper
	def log_in(user)
		# session es un método helper de rails que sirve para guardar datos en cookies
		session[:user_id] = user.id
	end

	# Retorna el actual usuario logeado
	def current_user
	  @current_user ||= User.find_by(id: session[:user_id])
	end

	# Retorna true si el usuario esta logeado
	def logged_in?
		!current_user.nil?
	end

	# Deslogeamos al actual usuario
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
