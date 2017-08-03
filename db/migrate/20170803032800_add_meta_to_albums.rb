class AddMetaToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :meta, :string
  end
end
