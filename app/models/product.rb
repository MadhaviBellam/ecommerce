class Product < ApplicationRecord
  has_many :orderitems
  belongs_to :category
  belongs_to :user
  validates :title, presence: true, length: { in: 2..25 }
  validates :price, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true

end
