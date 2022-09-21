class CommentsController < ApplicationController
    def new
        article = Article.find(params[:article_id])
        @comment = article.comments.build
    end

    def create
        article = Article.find(params[:article_id])
        comment = article.comments.build()
        if comment.save
            
    end

    private
    def comment_params
        params.require(:comment).permit(:content)
    end
end
