class HomeController < ApplicationController
  def index
    @every_post = Post.all.order("id desc")
  end

  def write
    new_post = Post.new
    new_post.content = params[:content]
    new_post.feedback = params[:feedback]
    new_post.save
    
    redirect_to "/home/index"
  end
  
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    
    redirect_to "/home/index"
  end
  
  def update_view
    @one_post = Post.find(params[:post_id])
    @every_post = Post.all.order("id desc")
  end
  
  def update_do
    @one_post = Post.find(params[:post_id])
    @one_post.content = params[:content]
    @one_post.feedback = params[:feedback]
    @one_post.save
    redirect_to "/home/index"
  end
end
