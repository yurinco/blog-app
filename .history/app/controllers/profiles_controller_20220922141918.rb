class ProfileController < ApplicationController
    before_acrion :authenticate_user!

    def show
        @profile = current_user
    end

    def edit
    end
end