class AddImageShareToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image_share, :string
  end
end
