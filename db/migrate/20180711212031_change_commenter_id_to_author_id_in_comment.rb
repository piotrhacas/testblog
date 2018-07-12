class ChangeCommenterIdToAuthorIdInComment < ActiveRecord::Migration[5.2]
  def change
  	remove_column :comments, :commenter_id, :integer, index: true
  	add_column :comments, :author_id, :integer, index: true
  end
end
