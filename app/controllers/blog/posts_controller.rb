class Blog::PostsController < ApplicationController
  def index
    @post = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to blog_posts_path
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
