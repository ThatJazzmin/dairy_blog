class RenamePostsToPosts < ActiveRecord::Migration
  def change
  	rename_table  :posts, :posts
  end
end
