require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  let(:author) { Author.create(name: 'Jan', surname: 'Kowalski') }
  
  it 'create BlogPost' do
    blog_post = BlogPost.create(post: 'Tutaj jest jakiś post', author_id: 1)
    expect(blog_post.post).to eq('Tutaj jest jakiś post')
  end
  
  it 'not create BlogPost without post value' do
    blog_post = BlogPost.create(post: nil, author_id: author)
    expect(blog_post).not_to be_valid
  end

  it 'create BlogPost and check Author name' do
    blog_post = BlogPost.create(post: 'Tutaj jest jakiś tekst', author_id: 1)
    expect(blog_post.author.name).to eq('Jan')
  end

end
