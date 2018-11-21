class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @blogs = Blog.where(user_id:params[:id]).order('created_at desc')
  end


end
