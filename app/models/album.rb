class Album < ApplicationRecord
  validates :title, presence: true

  # model关系----------
  belongs_to :user
  has_many :articles

  # 图片上传支持----------
  mount_uploader :album_cover, ImageUploader

end
