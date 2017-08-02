class AddAltumIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :altum_id, :integer
    add_index :articles, :altum_id
  end
end
