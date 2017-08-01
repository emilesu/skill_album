class Album < ApplicationRecord
  validates :title, presence: true

  # model关系----------
  belongs_to :user
  has_many :articles

end
