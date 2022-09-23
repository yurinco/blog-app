class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile.prepare_profile
  end

  def update
    @prodile = current_user.prepare_profile
    @profile = assin.build_profile(profile_params)
    if @profile.save
        redirect_to profile_path, notice: 'プロフィール更新！'
    else
        flash.now[:error] = '更新できませんでした'
        render :edit
    end
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