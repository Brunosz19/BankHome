class SessionsController < ApplicationController
  before_action :require_no_authentication, only: [:new, :create, :sign_up, :create_user]
  before_action :require_authentication, only: [:destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_to root_path
    else
      flash.now[:error] = 'Correo electrónico o contraseña inválidos.'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  def sign_up
    @user = User.new
  end

  def create_user
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to root_path
    else
      render 'sign_up'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def require_no_authentication
    redirect_to root_path if signed_in?
  end

  def require_authentication
    redirect_to new_session_path unless signed_in?
  end
end
