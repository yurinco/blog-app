class CommentsController < ApplicationController
    def new
        @comment = Article.find(params[:article_id])
        @comment = article.comments.build
    end
end