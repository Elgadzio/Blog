class AddAuthorIdToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :author_id, :integer
  end
end
