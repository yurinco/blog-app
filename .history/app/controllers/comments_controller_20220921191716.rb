class CommentsController < ApplicationController
    def new
        @comment = Article.find(params)
    end
end