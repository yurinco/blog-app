class CommentsController < ApplicationController
    def new
        @comment = Article.find(params[:article])
    end
end