class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.text :post, null: false
      t.integer :words_count

      t.timestamps
    end
  end
end
