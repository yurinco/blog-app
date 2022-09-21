class CommentsController < ApplicationController
    def new
        @comment = Article.find
    end
end