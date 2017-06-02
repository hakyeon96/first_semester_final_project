class PostsController < ApplicationController
  def new
    @post=Post.new
  end
  
  def create
    @post=Post.new
    @post.title=params[:title]
    @post.content=params[:content]
    @post.img_url=params[:img_url]
    @post.user_id=params[:id]
    
    @post.save
    
    redirect_to "/"
  end
  
  def index
    @post=Post.all
  end
end
