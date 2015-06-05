class CommentsController < ApplicationController

  def create
    comment = Comment.new(body: params[:comment][:body])
    post = Post.find(params[:post_id])
    if comment.valid? && post
      post.comments.push comment
      post.save
      current_user.comments.push comment
      current_user.save
      redirect_to show_post_path
    else
      flash["alert-warning"] = "Sorry, comment not created"
      redirect_to posts_path
    end
  end

end