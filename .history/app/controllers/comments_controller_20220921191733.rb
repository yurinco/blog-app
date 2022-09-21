class CommentsController < ApplicationController
    def new
        @comment = Article.find(params[:article_id])
        article.commen
    end
end