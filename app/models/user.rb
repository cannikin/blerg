class User < ApplicationRecord

  has_secure_password

  has_many :posts

  validates :post,  :presence => true
  validates :name,  :presence => true
  validates :email, :presence => true, :uniqueness => true,
    :format => { :with => EMAIL_REGEX }

end
