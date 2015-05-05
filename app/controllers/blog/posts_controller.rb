class Blog::PostsController < ApplicationController
  def index
    @post = Post.all
  end
end
