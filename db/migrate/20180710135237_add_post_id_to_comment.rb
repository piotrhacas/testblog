class AddPostIdToComment < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :post_id, :integer, index: true
  end
end
