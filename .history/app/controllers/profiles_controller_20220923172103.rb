class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.build_profile
  end

  def updated
    @profile = current_user
  end

  private
  def profile_params
    params.require(:profile).permit(
        :nickname,
        :introduction,
        :gender,
        :birthday,
        :subscribed
    )
  end
end