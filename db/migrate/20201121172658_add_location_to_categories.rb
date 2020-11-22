class AddLocationToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :location, :string
  end
end
