class Album < ApplicationRecord

  # 图片上传支持----------
  mount_uploader :album_cover, ImageUploader

  # 校验----------
  validates :title, presence: true

  # model关系----------
  belongs_to :user
  has_many :articles, dependent: :destroy
  has_many :reviews, dependent: :destroy

  # 点赞多对多model关系----------
  has_many :likes, dependent: :destroy
  has_many :liked_users, :through => :likes, :source => :user

  def find_like(user)
    self.likes.where( :user_id => user.id).first
  end
  # ----------



end
