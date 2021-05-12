class UsersController < ApplicationController
  before_action :delete_empty_params_fields, only: :update 

  def edit
    @user = User.find(current_user.id)
  end

  def update
    if current_user.update!(user_params)
      flash.keep.notice = "Profile updated successfully"
      redirect_to root_path
    else
      flash.now.alert = "Error: Unable to update your information."
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

  def delete_empty_params_fields
    params[:user].delete_if { |k, v| v.empty? } if params[:user]
  end
end

