class ProfileController < ApplicationController
    before_acrion :authenticate_user!

    def show
        @profile = cu
    end

    def edit
    end
end