class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @blogs = Blog.where(user_id:params[:id]).order('created_at desc').page(params[:page]).per(3)
  end

  def index
    @users = User.all

    @each_ids = []
    @users.each do |user|
      @each_ids << user.id
    end

    @a7times_ids = []
    @users.map do |user|
      @a7times_ids << user.id * 7
    end

    @map¥names = []
    @users.map do |user|
      @map¥names << "#{user.name}ちゃんで〜す"
    end

  end
end

# コントローラーで繰り返し処理できる！
# rubyのメソッドとか使えそう。map, each とか。他のも試したい。
# 変数は記号がほとんど使えなかったり、冒頭文字に数字だめなど制約あり。
#
#
#
