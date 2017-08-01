class Article < ApplicationRecord

  # model关系----------
  belongs_to :user
  belongs_to :album

  # 图片上传支持----------
  mount_uploader :article_cover, ImageUploader

end
