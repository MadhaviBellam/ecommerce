class AddColumnPriceToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :price, :integer
  end
end
