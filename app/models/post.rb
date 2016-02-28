class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :images, as: :imageable, dependent: :destroy
  has_many :likes, as: :likable, dependent: :destroy

  accepts_attachments_for :images, attachment: :file, append: true

  validates :body, presence: true

  def liked_by(user)
    likes.find_by_user_id(user.id)
  end
end
