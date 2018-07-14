class RemoveCommentIdFromAuthor < ActiveRecord::Migration[5.2]
  def change
  	remove_column :authors, :comment_id, :integer, index: true
  end
end
