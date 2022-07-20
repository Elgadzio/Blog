class AddBlogPostIdToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :blog_post_id, :integer
  end
end
