class AddBannerCoverToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :banner_cover, :string
  end
end
