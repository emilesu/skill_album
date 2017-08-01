class Article < ApplicationRecord

  # model关系----------
  belongs_to :user
  belongs_to :album

end
