class User < ApplicationRecord
  default_scope { where(active: true) }
end
