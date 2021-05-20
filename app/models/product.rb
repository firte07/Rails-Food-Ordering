class Product < ApplicationRecord
  validates :title, length: { maximum: 50 }, presence: true
  validates :description, length: { maximum: 150 }, presence: true
  validates :price, presence: true, numericality: { only_float: true, greater_than: 0 }

  has_one_attached :image
end
