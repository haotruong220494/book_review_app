class AddImageCoverCateToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image_cover_cate, :string
  end
end
