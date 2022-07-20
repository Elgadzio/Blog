require 'rails_helper'

RSpec.describe WordsCountJob, type: :job do
  it 'count words' do
    blog_post = BlogPost.create(post: 'Tutaj jakiś tekst')
    WordsCountJob.perform blog_post
    expect(blog_post.words_count).to eq(3)
  end
end
