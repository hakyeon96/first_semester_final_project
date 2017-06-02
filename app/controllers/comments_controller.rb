class CommentsController < ApplicationController
    def create
        @comment=Comment.new
        @comment.content=params[:comment][:content]
        @comment.post_id=params[:comment][:post_id]
        @comment.save
        
        redirect_to "/posts/index"
    end
    def destroy
        
        @destroy_comments=Comment.find(params[:id])
        @destroy_comments.destroy
        redirect_to "/posts/index"
    end
    def edit
        @nana=params[:id]
        @edit_comments=Comment.find(params[:id])
    end
    def update
        @update_comments=Comment.find(params[:id])
        @update_comments.content=params[:content]
        @update_comments.save
        redirect_to "/posts/index"
        
    end
    
    def delete
    
    end
end