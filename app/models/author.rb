class Author < ApplicationRecord
    has_many :blog_posts
    
    validates :name, :surname, presence: true, allow_blank: false
    validates_format_of :name, :surname, :with => /[a-z]+/i
end
