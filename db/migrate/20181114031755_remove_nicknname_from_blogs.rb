class RemoveNicknnameFromBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :nickname, :varchar
  end
end
