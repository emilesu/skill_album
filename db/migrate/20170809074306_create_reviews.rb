class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :album_id
      t.integer :user_id

      t.timestamps
    end
    add_index :reviews, :album_id
    add_index :reviews, :user_id
  end
end
