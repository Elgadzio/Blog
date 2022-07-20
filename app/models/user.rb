class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  validates :email, presence: true, allow_blank: false, uniqueness: true
  validates :password, presence: true, allow_blank: false
  validates_format_of :email,:with => Devise::email_regexp
end