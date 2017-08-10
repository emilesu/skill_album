class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # model关系----------
   has_many :albums, dependent: :destroy
   has_many :articles, dependent: :destroy
   has_many :reviews, dependent: :destroy

   # 点赞多对多model关系----------
   has_many :likes, dependent: :destroy
   has_many :liked_albums, :through => :likes, :source => :album


   #email用户名简写
   def display_name
     self.email.split("@").first
   end


end
