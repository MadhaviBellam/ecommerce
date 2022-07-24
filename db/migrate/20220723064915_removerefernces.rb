class Removerefernces < ActiveRecord::Migration[6.1]
  def change
    remove_reference :categories, :product, foreign_key: true, index: false
  end
end
