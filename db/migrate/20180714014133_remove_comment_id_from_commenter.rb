class RemoveCommentIdFromCommenter < ActiveRecord::Migration[5.2]
  def change
  	remove_column :commenters, :comment_id, :integer, index: true
  end
end
