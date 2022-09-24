class LikesController < ApplicationController
    before_action :authenticate_user!

    def
        Article.find
    end
end