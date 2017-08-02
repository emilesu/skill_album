class AddAlbumIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :album_id, :integer
    add_index :articles, :album_id
  end
end
