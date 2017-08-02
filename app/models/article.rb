class Article < ApplicationRecord

  # 图片上传支持----------
  mount_uploader :article_cover, ImageUploader

  # model关系----------
  belongs_to :user
  belongs_to :album


end
