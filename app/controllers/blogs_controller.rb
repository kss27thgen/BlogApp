class BlogsController < ApplicationController

  def index
    @blogs = Blog.order('created_at desc')
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to "/blogs"
  end

  def show
  end


private
def blog_params
  params.require(:blog).permit(:title,:text).merge(user_id:current_user.id)
end

end
