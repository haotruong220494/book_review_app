class AddImageCoverToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :image_cover, :string
  end
end
