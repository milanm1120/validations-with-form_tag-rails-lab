class PostsController < ApplicationController

  def new
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
