class Comment < ApplicationRecord
  belongs_to :user

  default_scope { joins(:user).where(users: { active: true }).readonly(false) }

  belongs_to :commentable, polymorphic: true
end
