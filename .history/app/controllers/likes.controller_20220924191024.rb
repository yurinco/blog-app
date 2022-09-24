class LikesController < ApplicationController
    before_action :authenticate_user!

    def
        Article.find(params)
    end
end