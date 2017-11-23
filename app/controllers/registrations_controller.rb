class RegistrationsController < ApplicationController

  def create

    @user = User.new(sign_up_params)
    @user.save
    redirect_to challenges_path
    
  end


  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

end
