class Review < ApplicationRecord

  # 校验----------
  validates :comment, presence: true

  # model关系----------
  belongs_to :user
  belongs_to :album

end
