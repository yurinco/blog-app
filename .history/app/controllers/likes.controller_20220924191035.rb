class LikesController < ApplicationController
    before_action :authenticate_user!

    def
        Article.find(params[article_id])
        article
    end
end