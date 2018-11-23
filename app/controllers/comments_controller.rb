class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to "/blogs/#{@comment.blog.id}"
  end


  private
  def comment_params
    params.permit(:text, :blog_id).merge(user_id: current_user.id)
  end

end
