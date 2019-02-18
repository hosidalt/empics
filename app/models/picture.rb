class Picture < ApplicationRecord
  has_many :category_pictures
  has_many :categories, through: :category_pictures
  belongs_to :user

  validates :comment, presence: true, unless: :image?

  mount_uploader :image, ImageUploader
end
