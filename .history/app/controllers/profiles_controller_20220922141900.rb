class ProfileController < ApplicationController
    before_acrion :authenticate_user!

    def show
    end

    def edit
    end
end