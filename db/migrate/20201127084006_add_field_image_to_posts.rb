class AddFieldImageToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :thumb_slider_image, :string
    add_column :posts, :bg_slider_image, :string
    add_column :posts, :highlight_image, :string
  end
end
