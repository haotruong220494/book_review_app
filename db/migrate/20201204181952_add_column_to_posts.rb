class AddColumnToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :image_general, :string
  	add_column :posts, :page_view, :string
  end
end
