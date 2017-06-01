class CommentsController < ApplicationController
    def create
        @comment=Comment.new
        @comment.content=params[:comment][:content]
        @comment.post_id=params[:comment][:post_id]
        @comment.save
        
        redirect_to "/"
    end
end