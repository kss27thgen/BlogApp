class BlogsController < ApplicationController
  before_action :move_to_index,except: [:index,:show]
  before_action :set_blog, only:[:destroy,:edit,:update,:show]

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
    @comments = @blog.comments.includes(:user)
    @comment = Comment.new
  end

  def edit
  end

  def update
    @blog.update(blog_params)
    redirect_to "/blogs"
  end

  def destroy
    @blog.destroy
    redirect_to "/blogs"
  end



  private
    def blog_params
      params.require(:blog).permit(:title,:text).merge(user_id:current_user.id)
    end

    def set_blog
      @blog = Blog.find(params[:id])
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
