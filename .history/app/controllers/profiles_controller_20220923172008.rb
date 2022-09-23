class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.build_profile
  end

  def updated
  end

  private
  def profile_params
    params.require(:profile).permit(
        :nickname,
    )
  end
end