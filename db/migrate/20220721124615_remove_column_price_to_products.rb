class RemoveColumnPriceToProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :price, :decimal
  end
end
