class ProfileAttrsController < ApplicationController
  def new
    @user = current_user
  end

  def create
    current_user.create_profile_attr(profile_attr_params)
    redirect_to user_path(current_user)
  end

  def edit
    @user = current_user
    @profile_attr = current_user.profile_attr
  end

  def update
    if current_user.profile_attr.update(profile_attr_params)
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  private

  def profile_attr_params
    params.fetch(:profile_attr).permit(:name, :about, :location, :company, :education, :user_id, :image)
  end
end
