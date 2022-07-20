class BlogPost < ApplicationRecord
  belongs_to :author

  validates :author, presence: true  
  validates :post, presence: true, allow_blank: false
end
  