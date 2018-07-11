class CreateCommenter < ActiveRecord::Migration[5.2]
  def change
    create_table :commenters do |t|
    	t.string :name
    	t.string :surname
    	t.integer :comment_id, index: true
    end
  end
end
