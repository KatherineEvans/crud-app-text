class CreateComicBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :comic_books do |t|
      t.string :title
      t.integer :price
      t.string :author

      t.timestamps
    end
  end
end
