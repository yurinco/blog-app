class ProfileController < ApplicationController
    before_acrion :authentic_user!

    def show
    end

    def edit
    end
end