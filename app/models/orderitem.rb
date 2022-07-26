class Orderitem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  validate :order_present
  before_save :set_unit_price
  before_save :set_total

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def total
      unit_price*quantity
  end

  private
  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end
  def set_unit_price
    self[:unit_price] = unit_price
  end
  def set_total
    self[:total] = total * quantity
  end
end
