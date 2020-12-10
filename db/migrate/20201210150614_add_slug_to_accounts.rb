class AddSlugToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :slug, :string
  end
end
