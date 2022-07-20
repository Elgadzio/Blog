require 'rails_helper'

RSpec.describe User, type: :model do
  it 'create User' do
    user = User.create(email: 'test@gmail.com', password: 'password')
    expect(user.email).to eq('test@gmail.com')
  end

  it 'not create User without password value' do
    user = User.create(email: 'test@gmail.com', password: nil)
    expect(user).not_to be_valid
  end

  it 'not create User without email value' do
    user = User.create(email: nil, password: 'password')
    expect(user).not_to be_valid
  end
end
