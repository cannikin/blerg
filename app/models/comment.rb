class Comment < ApplicationRecord

  belongs_to :post

  validates :post,  :presence => true
  validates :name,  :presence => true
  validates :email, :allow_blank => true, :format => { :with => EMAIL_REGEX }
  validates :body,  :presence => true

end
