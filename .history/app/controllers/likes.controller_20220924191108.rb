class LikesController < ApplicationController
    before_action :authenticate_user!

    def create
        Article.find(params[article_id])
        article.like.create(user_id: current_user.id)
    end
end