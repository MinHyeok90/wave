class HomeController < ApplicationController
  def index
    @every_post = Post.all.order("id desc")
  end

  def write
    @content = params[:content]
    @feedback = params[:feedback]
    new_post = Post.new
    new_post.content = @content
    new_post.feedback = @feedback
    new_post.save
    
    redirect_to "/home/index"
  end
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    
    redirect_to "/home/index"
  end
end
