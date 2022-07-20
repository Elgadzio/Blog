class WordsCountJob < ApplicationJob
  queue_as :default

  def self.perform(blog_post)
    blog_post.words_count = blog_post.post.split().size
    blog_post.save
  end
end
