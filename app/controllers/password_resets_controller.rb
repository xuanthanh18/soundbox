class PasswordResetsController < ApplicationController
  before_action :get_user, only: [:edit, :update]
  def new
  end

  def edit
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = "Email sent with password reset instructions"
      redirect_to root_url
    else
      flash.now[:danger] = "Email address not found"
      render 'new'
    end
  end

  def update
    if @user.password_reset_expired?
      flash[:danger] = "Password reset has expired."
      redirect_to new_password_reset_path
    elsif @user.update_attributes(user_params)
      flash[:success] = "Password has been reset."
      log_in @user
      redirect_to @user
    else
      render :edit
    end
  end


  private
    def user_params
      params.require(:user).permit(:password, :password_confirmation)
    end

    def get_user
      @user = User.find_by(email: params[:email])
      unless @user && @user.authenticated?(:reset, params[:id])
        redirect_to root_url
      end
    end
end
