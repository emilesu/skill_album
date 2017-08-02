class RemoveArticlesAlbumId < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :album_id
  end
end
