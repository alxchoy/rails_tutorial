class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      # redirect_to user_url(@user)
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  private
  	# strong params: indicamos que atributos son permitidos enviar al modelo
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end
