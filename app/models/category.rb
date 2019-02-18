class Category < ApplicationRecord
  has_many :category_pictures
  has_many :pictures, through: :category_pictures
  belongs_to :user
  validates :name, presence: true
end
