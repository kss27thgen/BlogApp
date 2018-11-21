class RemoveInfoFromBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs,:image,:text
    remove_column :blogs,:nickname,:varchar
  end
end
