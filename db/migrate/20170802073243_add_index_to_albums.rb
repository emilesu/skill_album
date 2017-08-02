class AddIndexToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_index :albums, :user_id
  end
end
