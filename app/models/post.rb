class Post < ApplicationRecord
  belongs_to :user

  default_scope { joins(:user).where(users: { active: true }).readonly(false) }

  has_many :comments, as: :commentable
end
