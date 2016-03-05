class Post < ApplicationRecord

  belongs_to :user
  has_many   :comments

  validates :user,  :presence => true
  validates :title, :presence => true
  validates :body,  :presence => true

  mount_uploader :attachment, AttachmentUploader

  def author
    user.name
  end

  def comments_count
    comments.count
  end

  def notify_comments
    comments.with_notifications
  end

end
