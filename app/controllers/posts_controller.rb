class PostsController < ApplicationController
  def home
    @post=Post.all
  end
  
  def new
    @post=Post.new
  end
  
  def create
    @post=Post.new
    @post.title=params[:title]
    @post.content=params[:content]
    @post.img_url=params[:img_url]
    
    @post.save
    
    redirect_to "/"
  end
  
  def index
    @post=Post.all
  end
end
