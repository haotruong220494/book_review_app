class AddColumnsToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :image, :string
    add_column :accounts, :insta_link, :string
    add_column :accounts, :rank, :integer, default: 1
  end
end
