class AddCommenterIdToComment < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :commenter_id, :integer, index: true
  end
end
