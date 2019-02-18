class AddCategoryToPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :category, foreign_key: true
  end
end
