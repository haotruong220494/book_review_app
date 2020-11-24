class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.references :account
    	t.references :category
    	t.string :name
    	t.text :description
    	t.string :image_cover
    	t.string :banner_cover
    	t.string :author
    	t.text :content
    	t.string :slug
    	t.string :buy_link
    	t.date :release_date
    	t.string :tag

      t.timestamps
    end
  end
end
