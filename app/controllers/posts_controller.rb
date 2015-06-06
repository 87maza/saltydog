class PostsController < ApplicationController
  def index
    @posts = Post.all.order("id DESC").all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    current_user.posts.push << post
    if current_user.save

      redirect_to root_path
    else
      flash["alert-warning"] = "Sorry, post not created"
      redirect_to new_post_path
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @post = Post.where(id: params[:id],user_id: current_user.id).first
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params.require(:post).permit(:title, :blogContent))
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def by_user
    @posts = Post.where(user: current_user)
  end
  def show
    @post = Post.find(params[:id])
  end


# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.


  private
  def post_params
    params.require(:post).permit(:blog_pic, :title, :blogContent)
  end

end
