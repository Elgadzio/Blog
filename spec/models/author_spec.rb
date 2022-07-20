require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'create Author' do
    author = Author.create(name: 'Jan', surname: 'Kowalski')
    expect(author.name).to eq('Jan')
    expect(author.surname).to eq('Kowalski')
  end

  it 'add blog_post to Author' do
    author = Author.create(name: 'Jan', surname: 'Kowalski', blog_post_id: 1)
    expect(author.name).to eq('Jan')
    expect(author.surname).to eq('Kowalski')
  end
end
