class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :image
      t.text :comment
      # t.references :category, foreign_key: true #追加のmigrateに記載
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
