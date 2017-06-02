class HomeController < ApplicationController
  def main_page
    @rand_posts = Post.limit(8).order("RANDOM()")
    @img_url = Post.offset(rand(Post.count)).first.img_url
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
end
