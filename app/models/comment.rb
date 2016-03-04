class Comment < ApplicationRecord

  belongs_to :post

  validates :name,  :presence => true
  validates :email, :allow_nil => true, :format => { :with => EMAIL_REGEX }
  validates :body,  :presence => true

end
