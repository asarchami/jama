class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :likes

  validates :user_id, presence: true
  validates :commentable_id, presence: true
  validates :commentable_type, presence: true
  validates :body, presence: true
end
