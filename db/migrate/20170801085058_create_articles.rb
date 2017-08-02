class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :article_cover
      t.string :label

      t.timestamps
    end
  end
end
