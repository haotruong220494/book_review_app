class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :slug

      t.timestamps
    end
  end
end
