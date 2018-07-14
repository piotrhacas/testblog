class RemoveAuthorIdFromComment < ActiveRecord::Migration[5.2]
  def change
  	remove_column :comments, :author_id, :integer, index: true
  end
end
