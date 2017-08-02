class ChangeArticlesColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :articles, :altum_id, :album_id
  end
end
