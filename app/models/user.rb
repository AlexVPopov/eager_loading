class User < ApplicationRecord
  default_scope { where(active: true) }

  has_many :posts
end
