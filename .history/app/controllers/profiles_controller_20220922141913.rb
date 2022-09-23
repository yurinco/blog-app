class ProfileController < ApplicationController
    before_acrion :authenticate_user!

    def show
        @profile = 
    end

    def edit
    end
end