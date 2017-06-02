class HomeController < ApplicationController
  def main_page
  end
  
  def login
  end
  
  def upload
  end
  
  def view
  end
    
  def index
        
  end
  
  def find
        
  end
  
  def mypage
    @my = Post.where(user_id: current_user.id)
  end
  
  def edit
    @edit_post=Post.find(params[:post_id])
  end
  
  def update
    @edit_post=Post.find(params[:post_id])
    @edit_post.title=params[:title]
    @edit_post.content=params[:content]
    @edit_post.content=params[:img_url]
    @edit_post.save
        
        redirect_to "/mypage"
  end
  
  def destroy
    @destroy_post=Post.find(params[:post_id])
    @destroy_post.destroy
        
    redirect_to "/mypage"
  end
end
