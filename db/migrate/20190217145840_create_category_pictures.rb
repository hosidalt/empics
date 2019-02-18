class CreateCategoryPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :category_pictures do |t|
      t.references :category, foreign_key: true
      t.references :picture, foreign_key: true
      t.timestamps
    end
  end
end
