class CommentsController < ApplicationController
    def new
        @comment = Article.find(params[:article_id])
        article.comments.build
    end
end