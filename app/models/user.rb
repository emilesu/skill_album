class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # model关系----------
   has_many :albums
   has_many :articles
   has_many :reviews

   #email用户名简写
   def display_name
     self.email.split("@").first
   end


end
