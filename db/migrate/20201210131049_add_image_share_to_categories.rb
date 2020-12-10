class AddImageShareToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :image_share, :string
  end
end
